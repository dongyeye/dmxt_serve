package fzu.edu.dmxt.controller;

import fzu.edu.dmxt.pojo.User;
import fzu.edu.dmxt.service.UserService;
import fzu.edu.dmxt.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/admin")
public class UserController {

    @Autowired
    private UserService userServivce;

    @RequestMapping("user_list")
    public String list(Model model,Page page){
        List<User> cs= userServivce.list(page);
        int total = userServivce.total();
        page.setTotal(total);
        model.addAttribute("cs", cs);
        model.addAttribute("page", page);
        return "admin/student";
    }




}
