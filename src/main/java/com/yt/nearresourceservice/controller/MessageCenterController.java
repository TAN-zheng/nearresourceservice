package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageCenterController {
    @RequestMapping("/toMessageCenter")
    public String toMessageCenter(){
        return "views/app/message/messagecenter";
    }
}
