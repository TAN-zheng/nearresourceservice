package com.yt.nearresourceservice.controller;

import com.yt.nearresourceservice.bean.Message;
import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.Result;
import com.yt.nearresourceservice.service.MessageResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class MessageController {
    @Autowired
    MessageResourceService messageService;
    @RequestMapping("/toMessage")
    public String toMessage(Long id, Model model){
/*
* 第一种：直接把查询的结果集放在了，model输出给前端了。
* 第二种：可以通过ajax与json格式来返回给前端。
* */
//        System.out.println("前端访问到了toMessageController");
//        System.out.println("前端返回的值"+id);
       Resource resource = messageService.getMessageResource(id);
//        System.out.println("打印封装的数据集："+resource);
        model.addAttribute("resource",resource);
        Result result = new Result();
        result.setData(resource);
        result.setCode(0);
        model.addAttribute("result",result);
        return "views/template/msgboard";
    }
    @RequestMapping("/toShowMessage")
    @ResponseBody
    public Result toShowMessage(Long id){
        System.out.println("访问了toShowMessage,返回符合json数据格式的数据");
        List<Message> messages = messageService.getMessages(id);
        System.out.println("messages:"+messages.toString());
        Result result = new Result();
        result.setData(messages);
        result.setCode(0);
        return result;
    }
    @RequestMapping("/toAddMessage")
    public String toAddMessage(@RequestBody Message message){
        System.out.println("前端访问了toAddMessage"+message);
        messageService.addMessage(message);
        return "views/template/msgboard";
    }
}
