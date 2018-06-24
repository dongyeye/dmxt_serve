package fzu.edu.dmxt.controller;

import fzu.edu.dmxt.pojo.Student;
import fzu.edu.dmxt.service.StudentService;
import fzu.edu.dmxt.util.Page;
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
public class AdminStudentController {
    @Autowired
    private StudentService studentService;

//    @RequestMapping("student")
//    public String list(Model model, Page page){
//        List<Student> st = studentService.list(page);
//        int total = studentService.total();
//        page.setTotal(total);
//        model.addAttribute("st",st);
//        model.addAttribute("page",page);
//        return "admin/student";
//    }
    @RequestMapping("student")
    public String list(Model model){
        List<Student> st = studentService.listAll();
        model.addAttribute("st",st);
        return "admin/student";
    }
    //添加学生
    @RequestMapping(value = "addStudent",method = RequestMethod.POST)
    @ResponseBody
    public Object addStudent(@RequestBody Map<String,String> map){
        int sex;
        if(map.get("new_sex").equals('男'))
            sex=0;
        else
            sex=1;
        Student student=new Student();
        System.out.println(map);
        student.setStudent_ID(map.get("new_student_ID"));
        student.setName(map.get("new_name"));
        student.setSchool(map.get("new_school"));
        student.setCollege(map.get("new_college"));
        student.setProfession(map.get("new_profession"));
        student.setGrade(map.get("new_grade"));
        student.setS_class(map.get("new_class"));
        student.setTel(map.get("new_tel"));
        student.setSex(sex);
        student.setOnline(0);
        studentService.add(student);
        return map;
    }
    //编辑学生
    @RequestMapping(value = "updateStudent",method = RequestMethod.POST)
    @ResponseBody
    public Object updateStudent(@RequestBody Map<String,String> map) {
        int sex;
        if(map.get("edit_sex").equals('男'))
            sex=0;
        else
            sex=1;
        Student student=studentService.get(parseInt(map.get("edit_id")));
        student.setStudent_ID(map.get("edit_student_ID"));
        student.setName(map.get("edit_name"));
        student.setSchool(map.get("edit_school"));
        student.setCollege(map.get("edit_college"));
        student.setProfession(map.get("edit_profession"));
        student.setGrade(map.get("edit_grade"));
        student.setS_class(map.get("edit_s_class"));
        student.setTel(map.get("edit_tel"));
        student.setSex(sex);
        studentService.update(student);
        return student;
    }
    //删除学生
    @RequestMapping(value = "deleteStudent",method = RequestMethod.POST)
    @ResponseBody
    public Object deleteStudent(@RequestBody Map<String,String> map) {
        Student student = studentService.get(parseInt(map.get("delete_id")));
        studentService.delete(student);
        return student;
    }
    //查找学生
    @RequestMapping(value = "findStudent",method = RequestMethod.POST)
    @ResponseBody
    public Object findStudent(@RequestBody Map<String,String> map) {
        Student student=studentService.findbystudent_ID(parseInt(map.get("find_student_ID")));
        return student;
    }
}
