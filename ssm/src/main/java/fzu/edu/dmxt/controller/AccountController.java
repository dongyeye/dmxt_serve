package fzu.edu.dmxt.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AccountController {



    @RequestMapping("/checkLogin")
    public String checkLogin(String account_number, String login_credent, Model model, HttpSession session){
        if(account_number.equals("admin")&&login_credent.equals("admin")){
            Map<String, Object> info = new HashMap<>();
            info.put("username",account_number);
            info.put("rolename","管理员");
            session.setAttribute("user", info);
            return "admin/home";
        }
        model.addAttribute("msg", "error");
        return "admin/login";
        //调用service方法
    }
}
