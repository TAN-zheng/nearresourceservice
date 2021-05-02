package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReleaseController {
    @RequestMapping("/toRelease")
    public String toRelease(){

        return "views/template/releaseform/releaseform";
    }
}
