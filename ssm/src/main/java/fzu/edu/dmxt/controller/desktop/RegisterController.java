package fzu.edu.dmxt.controller.desktop;

import fzu.edu.dmxt.pojo.Namerecord;
import fzu.edu.dmxt.pojo.Register;
import fzu.edu.dmxt.pojo.Registerdetail;
import fzu.edu.dmxt.service.NamerecordService;
import fzu.edu.dmxt.service.RegisterService;
import fzu.edu.dmxt.service.RegisterdetailService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.Integer.parseInt;

@CrossOrigin
@Controller
@RequestMapping("/user")
public class RegisterController {
    @Autowired
    private RegisterService registerService;
    @Autowired
    private NamerecordService namerecordService;
    @Autowired
    private RegisterdetailService registerdetailService;


}
