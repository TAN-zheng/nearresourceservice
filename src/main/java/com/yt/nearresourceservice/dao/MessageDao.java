package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.Message;
import org.springframework.stereotype.Component;

@Component
public interface MessageDao {
/*
* 添加信息
* */
    public void addMessage(Message message);
}
