package fzu.edu.dmxt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class PageController {
    @RequestMapping("/login")
    public String toLogin(){

        return "admin/login";
    }
    @RequestMapping("/home")
    public String toHome(){

        return "admin/home";
    }

    @RequestMapping("/teacher")
    public String toTeacher(){

        return "admin/teacher";
    }
    @RequestMapping("/table")
    public String toTable(){

        return "admin/table";
    }
    @RequestMapping("/form")
    public String toForm(){

        return "admin/form";
    }
    @RequestMapping("/tab-panel")
    public String toTab(){

        return "admin/tab-panel";
    }
    @RequestMapping("/ui-elements")
    public String toUi(){

        return "admin/ui-elements";
    }
    @RequestMapping("/chart")
    public String toChart(){

        return "admin/chart";
    }
    @RequestMapping("/empty")
    public String toEmpty(){

        return "admin/empty";
    }
    @RequestMapping("/test")
    public String toTest(){

        return "admin/test";
    }
}
