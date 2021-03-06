package fzu.edu.dmxt.interceptor;

import fzu.edu.dmxt.pojo.Account;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Map;

public class LoginInterceptor extends HandlerInterceptorAdapter {

    /**
     * 在业务处理器处理请求之前被调用
     * 如果返回false
     *     从当前的拦截器往回执行所有拦截器的afterCompletion(),再退出拦截器链
     * 如果返回true
     *    执行下一个拦截器,直到所有的拦截器都执行完毕
     *    再执行被拦截的Controller
     *    然后进入拦截器链,
     *    从最后一个拦截器往回执行所有的postHandle()
     *    接着再从最后一个拦截器往回执行所有的afterCompletion()
     */
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
        String contextPath=session.getServletContext().getContextPath();
        String[] noNeedAuthPage = new String[]{
                "login",
                "checkLogin",
                "test"};

        String uri = request.getRequestURI();
        uri = StringUtils.remove(uri, contextPath);
//        System.out.println(uri);
        if(uri.startsWith("/admin")){
            String method = StringUtils.substringAfterLast(uri,"/" );
//            System.out.println(session.getAttribute("user"));
//            System.out.println(!Arrays.asList(noNeedAuthPage).contains(method));
            if(!Arrays.asList(noNeedAuthPage).contains(method)){
                Object user =session.getAttribute("user");
//                System.out.println(user==null);
                if(null==user){
                    response.sendRedirect("login");
                    return false;
                }
            }
        }

        return true;

    }

    /**
     * 在业务处理器处理请求执行完成后,生成视图之前执行的动作
     * 可在modelAndView中加入数据，比如当前时间
     */

    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
//        System.out.println("this is postHandle of LoginInterceptor");
    }

    /**
     * 在DispatcherServlet完全处理完请求后被调用,可用于清理资源等
     *
     * 当有拦截器抛出异常时,会从当前拦截器往回执行所有的拦截器的afterCompletion()
     */

    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
//        System.out.println("this is afterCompletion of LoginInterceptor");
    }

}