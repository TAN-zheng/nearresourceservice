package com.yt.nearresourceservice.controller.orders;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.Result;
import com.yt.nearresourceservice.service.PersonalOrdersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class PersonalOrdersController {
    //注入实体类
    @Autowired
    PersonalOrdersService personalOrdersService;
    @RequestMapping("/toGetOrders")
    @ResponseBody
    public Result toGetOrders(@RequestParam Long id){
        System.out.println("这是去查询的个人页面的属于这个人的资源:"+id);
        List<Resource> resourceList =personalOrdersService.getPersonalOrders(id);
        Result result = new Result();
        result.setData(resourceList);
        return result;
    }
    @RequestMapping("/deleteResourceByIdS")
    public void deleteResourceByIdS(){


    }
}
