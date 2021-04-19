package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {
    @RequestMapping("/toMessage")
    public String toMessage(){
        return "views/template/msgboard";
    }
}
