package com.yt.nearresourceservice.service;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.dao.PersonalOrdersDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonalOrdersService {
    @Autowired
    PersonalOrdersDao personalOrdersDao;
    /*
    * 查询个人的所有订单
    * */
    public List<Resource> getPersonalOrders(Long id){
        return personalOrdersDao.getPersonalOrders(id);
    }
}
