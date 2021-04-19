package com.yt.nearresourceservice.config;

import com.yt.nearresourceservice.interceptor.MyInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

public class MyInterceptorConfig extends WebMvcConfigurationSupport {
//    注入我们自己编写的拦截器。让拦截器实现功能。
    @Autowired
    MyInterceptor myInterceptor;
//    添加静态资源。

    /**
     *
     * 功能描述:
     *  配置静态资源,避免静态资源请求被拦截
     */
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
        registry.addResourceHandler("/templates/**")
                .addResourceLocations("classpath:/templates/");

    }
    //添加拦截器
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(myInterceptor)
                //addPathPatterns 用于添加拦截规则 /**代表拦截所有请求
                .addPathPatterns("/**")
                //excludePathPatterns 用于排除拦截 此处我们排除"/"(登录界面)以及"/loginCheck"（验                   证登录账号密码方法
                .excludePathPatterns("/");
    }
}
