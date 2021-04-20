package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {
    @RequestMapping("/toShowElement")
    public String toShowElement(){
        return "views/component/form/element";
    }
    @RequestMapping("/toShowGroup")
    public String toShowGroup(){
        return "views/component/form/group";
    }
}
