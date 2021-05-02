package com.yt.nearresourceservice.service;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.GoodsQuery;
import com.yt.nearresourceservice.dao.GoodsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService {
    @Autowired
    GoodsDao goodsDao;
//    查询所有的数据。
    public List<Resource> getGoods(GoodsQuery goodsQuery){
        List<Resource> resourceList = goodsDao.getGoods(goodsQuery);
        return resourceList;
    }
//    用于查询分页的总条数
public Long getCount(GoodsQuery goodsQuery) {
    return goodsDao.getCount(goodsQuery);
}
}
