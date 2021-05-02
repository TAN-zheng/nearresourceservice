package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.Message;
import com.yt.nearresourceservice.bean.Resource;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface MessageResourceDao {
/*
* 这个方法是用于查询评论的内容。传的内容是一个资源的对象id，是唯一标识。
* 这个id在message表里面有关联，字段名：resourceid
*
* */
//    查询评论的内容
    public Resource getMessage(Long id);
    //    查询所有评论的内容
    public List<Message> getMessages(Long id);
//    评论的内容插入数据库
    public void addMessage(Message message);
}
