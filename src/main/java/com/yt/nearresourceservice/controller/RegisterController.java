package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "views/user/reg";
    }
    @RequestMapping("/toForget")
    public String toForget(){
        return "views/user/forget";
    }
}
