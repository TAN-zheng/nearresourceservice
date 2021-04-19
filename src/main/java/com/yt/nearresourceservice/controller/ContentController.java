package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContentController {
    @RequestMapping("/toContentList")
    public String toContentList(){
        return "views/app/content/list";
    }
    @RequestMapping("/toTags")
    public String toTags(){
        return "views/app/content/tags";
    }
    @RequestMapping("/toComment")
    public String toComment(){
        return "views/app/content/comment";
    }
}
