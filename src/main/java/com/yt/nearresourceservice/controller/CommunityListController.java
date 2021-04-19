package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityListController {
    @RequestMapping("/toCommunity")
    public String toCommunity(){
        return "views/app/forum/list";
    }
}
