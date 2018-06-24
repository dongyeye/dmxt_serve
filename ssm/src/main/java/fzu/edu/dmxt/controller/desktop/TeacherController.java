package fzu.edu.dmxt.controller.desktop;

import fzu.edu.dmxt.pojo.*;
import fzu.edu.dmxt.service.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.Integer.highestOneBit;
import static java.lang.Integer.parseInt;

@CrossOrigin
@Controller
@RequestMapping("/user")
public class TeacherController {
    @Autowired
    private NamerecordService namerecordService;
    @Autowired
    private RegisterService registerService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private RegisterdetailService registerdetailService;

    @RequestMapping(value = "/findByCourse",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object findByCourse(@RequestBody Map<String,String> map){
        System.out.println("-----------------find student by Course----------------");
        System.out.println(map);
        List<Namerecord> namerecords = namerecordService.findByCourse(parseInt(map.get("classID")));
        //List<Student> students = namerecord.getStudents();
        Map<String, Object> result = new HashMap<>();
        result.put("result",namerecords);
        return result;
    }
    @RequestMapping(value = "/findRegister",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object findRegister(@RequestBody Map<String,String> map){
        System.out.println("-----------------find register----------------");
        System.out.println(map);
        Register register=registerService.findRegister(parseInt(map.get("classID")));
        //List<Student> students = namerecord.getStudents();
        Map<String, Object> result = new HashMap<>();
        if(register!=null) {
            result.put("register_ID", register.getRegister_ID());
            result.put("result", true);
        }
        else
            result.put("result",false);
        return result;
    }

    @RequestMapping(value = "/updateRegister",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object updateRegister(@RequestBody Map<String,String> map){
        System.out.println("-----------------update register----------------");
        System.out.println(map);
        Register register=registerService.get(parseInt(map.get("register_ID")));
        register.setEnd_time(map.get("end_time"));
        register.setSign(0);
        registerService.update(register);
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }

    @RequestMapping(value = "/listTeacher",method = RequestMethod.GET,headers = "Accept=application/json")
    @ResponseBody
    public  Object listTeacher(){
        System.out.println("-----------------list Teacher----------------");
        List<Teacher> teachers = teacherService.listAll();
        Map<String, Object> result = new HashMap<>();
        result.put("result",teachers);
        return result;
    }

    @RequestMapping(value = "/addRegister",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object addRegister(@RequestBody Map<String,String> map,HttpServletRequest request){
        System.out.println("-----------------add register----------------");
        System.out.println(map);
        String ip = getIpAddr(request);
        System.out.println(ip);
        Register register = new Register();
        register.setCourse_ID(parseInt(map.get("course_ID")));
        register.setIp(ip);
        register.setStart_time(map.get("start_time"));
        register.setLongitude(map.get("lng"));
        register.setLatitude(map.get("lat"));
        register.setSign(1);
        registerService.add(register);
        List<Namerecord> namerecords = namerecordService.findByCourse(parseInt(map.get("course_ID")));
        for(int i=0;i<namerecords.size();i++){
            Registerdetail registerdetail = new Registerdetail();
            registerdetail.setRegister_ID(register.getRegister_ID());
            registerdetail.setCourse_ID(parseInt(map.get("course_ID")));
            registerdetail.setSid(namerecords.get(i).getStudent().getId());
            registerdetail.setMark(0);
            registerdetail.setGoaway(1);
            registerdetail.setStudent_name(namerecords.get(i).getStudent().getName());
            registerdetail.setStudent_profession(namerecords.get(i).getStudent().getProfession());
            registerdetail.setStudent_ID(namerecords.get(i).getStudent().getStudent_ID());
            registerdetailService.add(registerdetail);
        }
        Map<String, Object> result = new HashMap<>();
        result.put("result",register.getRegister_ID());
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

    @RequestMapping(value = "/listStudent",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object listStudent(@RequestBody Map<String,String> map){
        System.out.println("-----------------list student----------------");
        Map<String, Object> result = new HashMap<>();
        System.out.println(map);
        List<Registerdetail> registerdetails=registerdetailService.listRegisterdetail(parseInt(map.get("registerID")));
        //update namerecord
        for(int i=0;i<registerdetails.size();i++){
            Namerecord bean=new Namerecord();
            bean.setCourse_ID(parseInt(map.get("classID")));
            bean.setSid(registerdetails.get(i).getSid());
            Namerecord namerecord=namerecordService.findNamerecord(bean);
            int count=namerecord.getAbsence()+1-registerdetails.get(i).getMark();
            namerecord.setAbsence(count);
            namerecordService.update(namerecord);
        }
        result.put("result",registerdetails);
        return result;
    }

    @RequestMapping(value = "/listRegisterByCourse",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object listRegisterByCourse(@RequestBody Map<String,String> map){
        System.out.println("-----------------list register by course----------------");
        Map<String, Object> result = new HashMap<>();
        List<Map<String, Object>> list = new ArrayList<>();
        System.out.println(map);
        List<Register> registers = registerService.listRegister(parseInt(map.get("classID")));
        Registerdetail registerdetail=new Registerdetail();
        //statistic register absence
        for(int i=0;i<registers.size();i++){
            registerdetail.setRegister_ID(registers.get(i).getRegister_ID());
            registerdetail.setMark(0);
            int absence=registerdetailService.total(registerdetail);
            registerdetail.setMark(1);
            int register=registerdetailService.total(registerdetail);
            Map<String, Object> record = new HashMap<>();
            record.put("register_ID",registers.get(i).getRegister_ID());
            record.put("register",register);
            record.put("absence",absence);
            list.add(record);
        }
        result.put("result",registers);
        result.put("record",list);
        return result;
    }
}
