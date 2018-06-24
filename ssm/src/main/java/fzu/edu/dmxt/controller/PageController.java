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

    @RequestMapping("/blank")
    public String toBlank(){

        return "admin/blank";
    }
    @RequestMapping("/cards")
    public String toCards(){

        return "admin/cards";
    }
    @RequestMapping("/charts")
    public String toCharts(){

        return "admin/charts";
    }
    @RequestMapping("/forgot-password")
    public String toForgot(){

        return "admin/forgot-password";
    }
    @RequestMapping("/navbar")
    public String toNavbar(){

        return "admin/navbar";
    }
    @RequestMapping("/register")
    public String toRegister(){

        return "admin/register";
    }
    @RequestMapping("/tables")
    public String toTables(){

        return "admin/tables";
    }
    @RequestMapping("/test")
    public String toTest(){

        return "admin/test";
    }





}
