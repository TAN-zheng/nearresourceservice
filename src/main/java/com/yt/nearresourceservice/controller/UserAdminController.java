package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserAdminController {
    @RequestMapping("/toUserList")
    public String toUserList(){
        return "views/user/user/list";
    }
    @RequestMapping("/toAdminList")
    public String toAdminList(){
        return "views/user/administrators/list";
    }
    @RequestMapping("/toRole")
    public String toRole(){
        return "views/user/administrators/role";
    }
}
