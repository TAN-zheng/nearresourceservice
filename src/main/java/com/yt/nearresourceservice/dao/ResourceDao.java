package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.Resource;
import org.springframework.stereotype.Component;

@Component
public interface ResourceDao {
//    添加一项资源,数据表里面的体现是一行数据。
    public void addResource(Resource resource);
}
