package com.yt.nearresourceservice.controller.datauploadcontroller;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.Result;
import com.yt.nearresourceservice.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 这个控制层是接受来自前端的，资源发布表的内容，用来传递给后端，存储到数据库。
 *
 * */
@Controller
public class AddResourceController {
//    注解注入
    @Autowired
    ResourceService resourceService;
    @RequestMapping("/toAddResource")
    public String toAddResource(@RequestBody Resource resource){
        System.out.println(resource.toString());
        resourceService.addResource(resource);
        return "";
    }
}
