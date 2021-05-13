package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.Resource;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface PersonalOrdersDao {
/*
* 查询个人发布的所有资源信息
* */
    public List<Resource> getPersonalOrders(Long id);
}
