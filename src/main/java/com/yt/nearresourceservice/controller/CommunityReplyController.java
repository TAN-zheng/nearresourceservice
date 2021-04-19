package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityReplyController {
    @RequestMapping("/toReplys")
    public String toReplys(){
        return "views/app/forum/replys";
    }
}
