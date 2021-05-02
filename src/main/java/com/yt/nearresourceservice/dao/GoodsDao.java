package com.yt.nearresourceservice.dao;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.GoodsQuery;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface GoodsDao {
//    获取表单的资源
    public List<Resource> getGoods(GoodsQuery goodsQuery);
//用于获取分总数
    Long getCount(GoodsQuery goodsQuery);
}
