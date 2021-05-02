package com.yt.nearresourceservice.service;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.dao.ResourceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
*
* 这个类是与资源相关的
 * 第一个方法：addResource 是向数据库添加资源信息。
* */
@Service
public class ResourceService {
//    注入addResource的dao接口
    @Autowired
    ResourceDao resourceDao;
//    发布的资源，存储到数据库，下面的方法是服务层的逻辑。
    public void addResource(Resource resource){
        resourceDao.addResource(resource);
    }

}
