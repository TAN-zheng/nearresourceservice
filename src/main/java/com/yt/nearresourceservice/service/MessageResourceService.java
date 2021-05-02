package com.yt.nearresourceservice.service;

import com.yt.nearresourceservice.bean.Message;
import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.dao.MessageDao;
import com.yt.nearresourceservice.dao.MessageResourceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageResourceService {
@Autowired
    MessageResourceDao messageResourceDao;
@Autowired
    MessageDao messageDao;
/*
* 这个方法是查询一个资源的具体信息，并且查询评论。
* */
    public Resource getMessageResource(Long id) {
        return messageResourceDao.getMessage(id);
    }
    /*
* 根据商品展示页面前端的行监听，传入的id作为条件进行查询。
* 查询后可以进行报名参与功能的实现。
* 实现单个资源的查询。
* */
    public List<Message> getMessages(Long id){
        return messageResourceDao.getMessages(id);
    };
/*
* 发表一个评论存进数据库
* */
    public void addMessage(Message message) {
        messageDao.addMessage(message);

    }
}
