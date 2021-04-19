package com.yt.nearresourceservice.controller;

import com.yt.nearresourceservice.bean.User;
import com.yt.nearresourceservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    //    注入service层的实例。
    @Autowired
    UserService userService;

    /*
     * 访问登录页面。
     * 这个后缀改了很多个地方。具体我也不清楚。
     * 主要是把后缀改为:ftl。
     * 路径只写了一个“/”就访问：localhost:8080就可以直接访问到项目的登录界面。
     * */
    @RequestMapping("/")
    public String toLogin() {
        return "views/user/login";
    }

//让页面资源能够被访问
    @RequestMapping("/toConsole")
    public String toConsole() {
        return "views/home/console";
    }

    /*
     *从前端的表单拿到参数，进行数据库查询。如果能查询到就说明这个用户存在。就进行页面跳转。
     * */
    @RequestMapping("/toLoginIndex")
    public String toLoginIndex(HttpSession session,
                               @RequestParam("username") String username,
                               @RequestParam("password") String password) {
        User user = userService.getLoginUser(username, password);
        if (user != null){
            session.setAttribute("user",user);
            return "views/index";
        }
        session.setAttribute("msg","账户或者密码错误！");
       return "redirect:/";

    }

    //    退出
    @RequestMapping("/logOut")
    public String logOut(HttpSession session) {
        //        清除退出时的“请登录”的提示。
        session.invalidate();
        return "redirect:/";
    }
}
