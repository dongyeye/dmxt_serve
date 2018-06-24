package fzu.edu.dmxt.controller.desktop;
import fzu.edu.dmxt.pojo.Course;
import fzu.edu.dmxt.pojo.Namerecord;
import fzu.edu.dmxt.pojo.Teacher;
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
public class CourseController {
    @Autowired
    private CourseService courseService;
    @Autowired
    private NamerecordService namerecordService;

    @RequestMapping(value = "/findByTeacher",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object findByTeacher(@RequestBody Map<String,String> map){
        System.out.println("-----------------find course by teacher----------------");
        System.out.println(map.get("userID"));
        Map<String, Object> result = new HashMap<>();
        List<Course> courses = courseService.findByTeacher(parseInt(map.get("userID")));
        result.put("result",courses);
        return result;
    }



    @RequestMapping(value = "/addCourse",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object addCourse(@RequestBody Map<String,String> map){
        System.out.println("-----------------add course----------------");
        System.out.println(map);
        Course course = new Course();
        course.setCourse_name(map.get("classname"));
        course.setTeacherID(parseInt(map.get("classteacherID")));
        course.setClass_time(map.get("classtime"));
        course.setClass_location(map.get("classlocal"));
        courseService.add(course);
        String s=Integer.toString(course.getId());
        for(int i=s.length();i<4;i++){
            s='0'+s;
        }
        System.out.println(s);
        course.setCourse_number(s);
        courseService.updateCourseNumber(course);
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }

    @RequestMapping(value = "/deleteCourse",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object deleteCourse(@RequestBody Map<String,String> map){
        System.out.println("-----------------delete course----------------");
        System.out.println(map);
        courseService.delete(parseInt(map.get("course_number")));
        namerecordService.deleteByCourse(parseInt(map.get("course_number")));
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }

    @RequestMapping(value = "/editCourse",method = RequestMethod.POST,headers = "Accept=application/json")
    @ResponseBody
    public  Object editCourse(@RequestBody Map<String,String> map){
        System.out.println("-----------------edit course----------------");
        System.out.println(map);
        Course course = courseService.get(parseInt(map.get("classnum")));
        course.setCourse_name(map.get("classname"));
        course.setClass_time(map.get("classtime"));
        course.setClass_location(map.get("classlocal"));
        courseService.update(course);
        Map<String, Object> result = new HashMap<>();
        result.put("result",true);
        return result;
    }


}
