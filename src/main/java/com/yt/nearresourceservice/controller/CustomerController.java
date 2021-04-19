package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
    @RequestMapping("/toCustomer")
    public String toCustomer(){
        return "views/template/caller";
    }
}
