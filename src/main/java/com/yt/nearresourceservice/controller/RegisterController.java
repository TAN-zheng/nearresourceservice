package com.yt.nearresourceservice.controller;

import com.yt.nearresourceservice.bean.User;
import com.yt.nearresourceservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegisterController {
    @Autowired
    UserService userService;
    /**
     * 跳转到注册界面。
     * */
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "views/user/reg";
    }
    /**
    * 跳转到修改密码的页面
    * */
    @RequestMapping("/toForget")
    public String toForget(){
        return "views/user/forget";
    }
    /**
     * 注册用户，把用户信息添加到数据库保存起来。
     * 这个方法是可以有返回值的，我这里没有设置返回值，因为项目太小。
     * 大的项目可以通过返回int类型来判断数据库是否插入成功。
     * */

    @RequestMapping("/toAddUser")
    @ResponseBody
    public void toAddUser(@RequestBody User user){
        System.out.println(user);
        userService.toAddUser(user);

    }
}
