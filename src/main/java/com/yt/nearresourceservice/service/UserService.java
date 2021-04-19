package com.yt.nearresourceservice.service;

import com.yt.nearresourceservice.bean.User;
import com.yt.nearresourceservice.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
//    注入dao的实例对象。@Component注解。
    @Autowired
    UserDao userDao;
    /*
    * 查询用户名和密码。
    * */
public User getLoginUser(String username,String password){
    return userDao.getLoginUser(username,password);
}
}
