package com.yt.nearresourceservice.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Component
public class MyInterceptor implements HandlerInterceptor {
    /*
    * 这是类实现HandlerInterceptor接口，重写了HandlerInterceptor()方法。
    * 这个拦截器会在访问页面的时候会进行拦截。是在客户端发起请求后，获得了服务器的结果时
    * 在访问控制层前进行拦截。
    *
    * */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        获取session。客户端请求的时候把user设置进了session。
//        获取session里面存放一个user对象。
        Object user = request.getSession().getAttribute("user");
        System.out.println(user.toString()+"获取的用户！看看是否存在！");
//        判断是否登录。
        if(user==null){
//            把提示信息存放到session里面在前端可以通过msg取出来。
            request.getSession().setAttribute("msg","请先登录");
//            重定向到登录界面，访问的是：localhost:8080/。这个地址。
//            forward(),方法把这个二个信息携带过去。
            request.getRequestDispatcher("/").forward(request,response);
//            返回false就不执行页面的放行。
            return false;
        }
//        如果不为空，就直接return为true就直接放行，执行下一个步骤。
        return true;
    }
}
