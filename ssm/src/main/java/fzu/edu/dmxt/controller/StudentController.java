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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("student")
    public String list(Model model, Page page){
        List<Student> st = studentService.list(page);
        int total = studentService.total();
        page.setTotal(total);
        model.addAttribute("st",st);
        model.addAttribute("page",page);
        return "admin/student";
    }
    @RequestMapping(value = "addStudent",method = RequestMethod.POST)
    @ResponseBody
    public Object addStudent(@RequestBody Map map){
        Map<String, Object> result = new HashMap<>();
        result.put("123",66);
        System.out.println(map.get("new_name"));
        return result;
    }
}
