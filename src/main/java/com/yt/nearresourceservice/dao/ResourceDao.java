package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.Resource;
import org.springframework.stereotype.Component;

@Component
public interface ResourceDao {
//    添加一项资源,数据表里面的体现是一行数据。
    public void addResource(Resource resource);
    /*
    * 这个方法是前端进行单个资源项目状态修改的后端操作。
    * 前端根据行操作传入id进行数据的查询，
    * 然后返回前端，前端在进行修改。
    * */
    public Resource getPersonalOrders(Long id);
    /*
    * 前端页面单个资源项修改的后端update
    * */
    public boolean updatePersonalOrders(Resource resource);
}
