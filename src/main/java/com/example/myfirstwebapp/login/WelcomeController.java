package com.example.myfirstwebapp.login;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
@SessionAttributes("name")
public class WelcomeController {

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String gotoWelcome(ModelMap model){
        model.put("name",getLoggedInUserName());
        return "welcome";
    }
    private String getLoggedInUserName(){
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
       return authentication.getName();
    }
}
