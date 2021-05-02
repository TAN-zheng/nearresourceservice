package com.yt.nearresourceservice.bean;

import lombok.Data;

@Data
public class Message {
    private Long id;//唯一标识
    private Long userid;//评论用户的id
    private Long replierid;//评论的评论的id
    private Long resourceid;//一个资源的唯一标识
    private String usercomment;//评论的内容
}
