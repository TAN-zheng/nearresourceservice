package com.yt.nearresourceservice.controller.datauploadcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReleaseUploadController {
    @RequestMapping("/toReleaseUploadForm")
    public String toReleaseUploadForm(){
        return "views/template/releaseform/releaseuploadform";
    }
}
