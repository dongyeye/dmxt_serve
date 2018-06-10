package fzu.edu.dmxt.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AccountController {



    @RequestMapping("/checkLogin")
    public String checkLogin(String account_number, String login_credent, Model model, HttpSession session){
        if(account_number.equals("admin")&&login_credent.equals("admin")){
            Map<String, Object> info = new HashMap<>();
            info.put("username",account_number);
            info.put("rolename","管理员");
            session.setAttribute("user", info);
            return "admin/home";
        }
        model.addAttribute("msg", "error");
        return "admin/login";
        //调用service方法
//        int acc_type=0;
//        System.out.println(acc_name+acc_pas+acc_type);
//        Account account = accountService.get(acc_name,acc_pas,acc_type);
//        //若有user则添加到model里并且跳转到成功页面
//        if(account != null){
//            User user = userServivce.get(account.getAcc_user_id());
//            Role role = roleService.get(user.getRole_id());
//            if(role.getRole_name().equals("学生")) {
//                Map<String, Object> info = new HashMap<>();
//                info.put("username",user.getUser_name());
//                info.put("useronline",user.getUser_online());
//                info.put("rolename",role.getRole_name());
//                System.out.println(user.getUser_name() + role.getRole_name() );
//                session.setAttribute("user", info);
//                return "admin/home";
//            }
//        }
//        model.addAttribute("msg", "error");
//        return "admin/login";
    }
}
