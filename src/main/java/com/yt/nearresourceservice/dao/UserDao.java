package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

//注解
@Component
public interface UserDao {
/*
* 这个接口方法是为了，查询登录用户。
* */
    public User getLoginUser(@Param("username") String username,@Param("password") String password);
}
