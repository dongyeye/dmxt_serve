package fzu.edu.dmxt.controller;


import fzu.edu.dmxt.pojo.Teacher;
import fzu.edu.dmxt.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

import static java.lang.Integer.parseInt;

@Controller
@RequestMapping("/admin")
public class AdminTeacherController {
    @Autowired
    private TeacherService teacherService;

    @RequestMapping("teacher")
    public String list(Model model){
        List<Teacher> te = teacherService.listAll();
        model.addAttribute("te",te);
        return "admin/teacher";
    }
    //添加老师
    @RequestMapping(value = "addTeacher",method = RequestMethod.POST)
    @ResponseBody
    public Object addTeacher(@RequestBody Map<String,String> map){
        int sex;
        if(map.get("new_sex").equals('男'))
            sex=0;
        else
            sex=1;
        Teacher teacher=new Teacher();
        System.out.println(map);
        teacher.setTeacher_ID(map.get("new_teacher_ID"));
        teacher.setName(map.get("new_name"));
        teacher.setSchool(map.get("new_school"));
        teacher.setCollege(map.get("new_college"));
        teacher.setTel(map.get("new_tel"));
        teacher.setSex(sex);
        teacherService.add(teacher);
        return map;
    }
    //删除老师
    @RequestMapping(value = "deleteTeacher",method = RequestMethod.POST)
    @ResponseBody
    public Object deleteTeacher(@RequestBody Map<String,String> map) {
        Teacher teacher=teacherService.get(parseInt(map.get("delete_id")));
        teacherService.delete(teacher);
        return teacher;
    }
    //编辑老师
    @RequestMapping(value = "updateTeacher",method = RequestMethod.POST)
    @ResponseBody
    public Object updateTeacher(@RequestBody Map<String,String> map) {
        int sex;
        if(map.get("edit_sex").equals('男'))
            sex=0;
        else
            sex=1;
        Teacher teacher=teacherService.get(parseInt(map.get("edit_id")));
        teacher.setTeacher_ID(map.get("edit_teacher_ID"));
        teacher.setName(map.get(("edit_name")));
        teacher.setSchool(map.get("edit_school"));
        teacher.setCollege(map.get("edit_college"));
        teacher.setTel(map.get("edit_tel"));
        teacher.setSex(sex);
        System.out.println(map);
        teacherService.update(teacher);
        return teacher;
    }
    //查找老师
    @RequestMapping(value = "findTeacher",method = RequestMethod.POST)
    @ResponseBody
    public Object findTeacher(@RequestBody Map<String,String> map) {
        Teacher teacher=teacherService.findbyteacher_ID(parseInt(map.get("find_teacher_ID")));
        return teacher;
    }
}
