package fzu.edu.dmxt.controller.desktop;

import fzu.edu.dmxt.pojo.Register;
import fzu.edu.dmxt.pojo.Registerdetail;
import fzu.edu.dmxt.pojo.Student;
import fzu.edu.dmxt.service.RegisterService;
import fzu.edu.dmxt.service.RegisterdetailService;
import fzu.edu.dmxt.service.StudentService;
import fzu.edu.dmxt.util.MapUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import static fzu.edu.dmxt.util.IpV4Util.checkSameSegment;
import static fzu.edu.dmxt.util.IpV4Util.getIpV4Value;
import static java.lang.Integer.parseInt;

@CrossOrigin
@Controller
@RequestMapping("/user")
public class StudentController {
    @Autowired
    private RegisterService registerService;
    @Autowired
    private RegisterdetailService registerdetailService;
    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/updateRegisterdetail",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object updateRegisterdetail(@RequestBody Map<String,String> map,HttpServletRequest request){
        System.out.println("-----------------update registerdetail----------------");
        System.out.println(map);
        String ip = getIpAddr(request);
        Map<String, Object> result = new HashMap<>();
        Registerdetail bean = new Registerdetail();
        bean.setRegister_ID(parseInt(map.get("registerID")));
        bean.setCourse_ID(parseInt(map.get("classID")));
        bean.setSid(parseInt(map.get("stdID")));
        Registerdetail registerdetail = registerdetailService.findRegisterdetail(bean);
        if(registerdetail.getMark()==0){
            Register register = registerService.get(parseInt(map.get("registerID")));
            String tip=register.getIp();
            System.out.println("ip"+ip+' '+"tip"+tip);
            int mask = getIpV4Value( "255.255.255.0");
            if(checkSameSegment(ip, tip, mask)) {
                registerdetail.setMark(1);
                registerdetailService.update(registerdetail);
                result.put("result", 0);
            }
            else
                result.put("result", 1);
        }
        else
            result.put("result",2);
        return result;
    }
    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("X-Real-IP");
        if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }
        ip = request.getHeader("X-Forwarded-For");
        if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
            // 多次反向代理后会有多个IP值，第一个为真实IP。
            int index = ip.indexOf(',');
            if (index != -1) {
                return ip.substring(0, index);
            } else {
                return ip;
            }
        } else {
            return request.getRemoteAddr();
        }
    }

    @RequestMapping(value = "/findClassmate",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object findClassmate(@RequestBody Map<String,String> map){
        System.out.println("-----------------find classmate----------------");
        System.out.println(map);
        Map<String, Object> result = new HashMap<>();
        Student student = new Student();
        student.setCollege(map.get("college"));
        student.setGrade(map.get("grade"));
        student.setSchool(map.get("school"));
        student.setProfession(map.get("profession"));
        List<Student> students=studentService.findClassmate(student);
        result.put("result",students);
        return result;
    }

    @RequestMapping(value = "/updateRegisterdetailMobile",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object updateRegisterdetailMobile(@RequestBody Map<String,String> map,HttpServletRequest request){
        System.out.println("-----------------update registerdetail Mobile----------------");
        System.out.println(map);
        double lat1 = Double.valueOf(map.get("latitude"));
        double lng1 = Double.valueOf(map.get("longitude"));
        Map<String, Object> result = new HashMap<>();
        Registerdetail bean = new Registerdetail();
        bean.setRegister_ID(parseInt(map.get("registerID")));
        bean.setCourse_ID(parseInt(map.get("classID")));
        bean.setSid(parseInt(map.get("stdID")));
        Registerdetail registerdetail = registerdetailService.findRegisterdetail(bean);
        if(registerdetail.getMark()==0){
            Register register = registerService.get(parseInt(map.get("registerID")));
            double lat2 = Double.valueOf(register.getLatitude());
            double lng2 = Double.valueOf(register.getLongitude());
            double dist = MapUtils.GetDistance(lat1,lng1,lat2,lng2);
            System.out.println(dist);
            if(dist<999999){
                registerdetail.setMark(1);
                registerdetailService.update(registerdetail);
                result.put("result", 0);
            }
            else
                result.put("result",1);
        }
        else
            result.put("result",2);
        return result;
    }

}
