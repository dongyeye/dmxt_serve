package fzu.edu.dmxt.controller.desktop;

import fzu.edu.dmxt.pojo.*;
import fzu.edu.dmxt.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.HashMap;
import java.util.Map;

import static java.lang.Integer.parseInt;

@CrossOrigin
@Controller
@RequestMapping("/user")
//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
@SessionAttributes("user")
public class LoginController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private TeacherService teacherService;

    @RequestMapping(value = "/checkLogin",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object checklogin(@RequestBody Map<String,String> map){
        System.out.println("-------------checkLogin-------------");
        System.out.println(map.get("username") + ' ' + map.get("password") + ' ' + map.get("logintype"));
        Map<String, Object> result = new HashMap<>();
        Account account = accountService.get(map.get("username"), map.get("password"),parseInt(map.get("logintype")));
        if (account!=null) {
            Role role = roleService.get(account.getRole_id());
            if(role.getName().equals("学生")) {
                Student student=studentService.get(account.getS_T_id());
                student.setOnline(1);
                studentService.updateOnline(student);
                result.put("ID",student.getId());
                result.put("username",student.getName());
                result.put("useronline",student.getOnline());
                result.put("rolename",role.getName());
                result.put("student",student);
                result.put("check",true);
                return  result;
            }
            else if(role.getName().equals("老师")){
                Teacher teacher=teacherService.get(account.getS_T_id());
                teacher.setOnline(1);
                teacherService.updateOnline(teacher);
                result.put("ID",teacher.getId());
                result.put("username",teacher.getName());
                result.put("useronline",teacher.getOnline());
                result.put("rolename",role.getName());
                result.put("check",true);
                return  result;
            }
        }
        result.put("check",false);
        return result;
    }

    @RequestMapping(value = "/registerStudent",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object registerStudent(@RequestBody Map<String,String> map){
        Student student=new Student();
        System.out.println("-----------------register student----------------");
        System.out.println(map);
        student.setSchool(map.get("school"));
        student.setCollege(map.get("yard"));
        student.setProfession(map.get("major"));
        student.setGrade(map.get("layer"));
        student.setStudent_ID(map.get("stdnum"));
        student.setName(map.get("name"));
        student.setTel(map.get("phoneNumber"));
        student.setOnline(0);
        studentService.add(student);
        Account account=new Account();
        account.setAccount_number(map.get("nickname"));
        account.setLogin_credent(map.get("password"));
        account.setLanding_type(0);
        account.setRole_id(1);
        account.setS_T_id(student.getId());
        accountService.add(account);
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }

    @RequestMapping(value = "/registerTeacher",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object registerTeacher(@RequestBody Map<String,String> map){
        Teacher teacher=new Teacher();
        System.out.println("-----------------register teacher----------------");
        System.out.println(map);
        teacher.setSchool(map.get("school"));
        teacher.setCollege(map.get("yard"));
        teacher.setTeacher_ID(map.get("teanum"));
        teacher.setName(map.get("name"));
        teacher.setTel(map.get("phoneNumber"));
        teacher.setOnline(0);
        teacherService.add(teacher);
        Account account=new Account();
        account.setAccount_number(map.get("nickname"));
        account.setLogin_credent(map.get("password"));
        account.setLanding_type(0);
        account.setRole_id(2);
        account.setS_T_id(teacher.getId());
        accountService.add(account);
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }


    @RequestMapping(value = "/judge",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object judge(@RequestBody Map<String,String> map){
        System.out.println("-----------------judge if repeat----------------");
        System.out.println(map.get("userName"));
        Account account = accountService.findByUsername(map.get("userName"));
        Map<String, Object> result = new HashMap<>();
        if(account == null){
            result.put("result",true);
        }
        else
            result.put("result",false);
        return result;
    }


    @RequestMapping(value = "/loginByPhone",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object loginByPhone(@RequestBody Map<String,String> map){
        System.out.println("-----------------login by phone----------------");
        System.out.println(map);
        Student student=studentService.findByPhone(map.get("tel"));
        Teacher teacher=teacherService.findByPhone(map.get("tel"));
        Map<String, Object> result = new HashMap<>();
        int num=(int)(Math.random()*8999)+1000;
        if(student!=null){
            result.put("student",student);
            result.put("message",num);
        }
        else if(teacher!=null){
            result.put("teacher",teacher);
            result.put("message",num);
        }
        else
            result.put("exit",false);
        return result;
    }

    @RequestMapping(value = "/editPassword",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object editPassword(@RequestBody Map<String,String> map){
        System.out.println("-----------------edit password----------------");
        System.out.println(map);
        Account account = new Account();
        int role_id;
        if(map.get("rolename").equals("学生"))
            role_id=1;
        else
            role_id=2;
        account.setRole_id(role_id);
        account.setS_T_id(parseInt(map.get("ID")));
        account.setLogin_credent(map.get("newpassword"));
        accountService.updatePassword(account);
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }
}
