package fzu.edu.dmxt.controller.desktop;

import fzu.edu.dmxt.pojo.Course;
import fzu.edu.dmxt.pojo.Namerecord;
import fzu.edu.dmxt.service.CourseService;
import fzu.edu.dmxt.service.NamerecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.Integer.parseInt;

@CrossOrigin
@Controller
@RequestMapping("/user")
public class NamerecordController {
    @Autowired
    private CourseService courseService;
    @Autowired
    private NamerecordService namerecordService;

    @RequestMapping(value = "/findByStudent",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object findByStudent(@RequestBody Map<String,String> map){
        System.out.println("-----------------find course by student----------------");
        System.out.println(map);
        Map<String, Object> result = new HashMap<>();
        List<Namerecord> namerecords = namerecordService.findByStudent(parseInt(map.get("userID")));
        result.put("result",namerecords);
        return result;
    }

    @RequestMapping(value = "/deleteNamerecord",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object deleteNamerecord(@RequestBody Map<String,String> map){
        System.out.println("-----------------delete namerecord----------------");
        System.out.println(map);
        Map<String, Object> result = new HashMap<>();
        Namerecord namerecord = new Namerecord();
        namerecord.setCourse_ID(parseInt(map.get("classID")));
        namerecord.setSid(parseInt(map.get("stdID")));
        namerecordService.delete(namerecord);
        result.put("result",true);
        return result;
    }

    @RequestMapping(value = "/addNamerecord",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object addNamerecord(@RequestBody Map<String,String> map){
        System.out.println("-----------------add namerecord----------------");
        System.out.println(map);
        Map<String, Object> result = new HashMap<>();
        Namerecord namerecord = new Namerecord();
        namerecord.setCourse_ID(parseInt(map.get("classID")));
        namerecord.setSid(parseInt(map.get("stdID")));
        Namerecord test = namerecordService.findNamerecord(namerecord);
        if(test!=null)
            result.put("result",false);
        else{
            namerecordService.add(namerecord);
            result.put("result",true);
        }
        return result;
    }
}
