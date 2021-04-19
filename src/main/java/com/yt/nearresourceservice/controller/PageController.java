package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/toHomePage1")
    public String toHomePage1(){
        return "views/home/homepage1";
    }
    @RequestMapping("/toHomePage2")
    public String toHomePage2(){
        return "views/home/homepage2";
    }
}
