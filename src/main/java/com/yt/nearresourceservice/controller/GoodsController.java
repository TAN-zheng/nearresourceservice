package com.yt.nearresourceservice.controller;

import com.yt.nearresourceservice.bean.Resource;
import com.yt.nearresourceservice.common.GoodsQuery;
import com.yt.nearresourceservice.common.Result;
import com.yt.nearresourceservice.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GoodsController {
    @Autowired
    GoodsService goodsService;
/*
* 访问页面
* */
    @RequestMapping("/toGoods")
    public String toGoods(){
        return "views/template/goodslist";
    }
    /*
    * 查询商品的所有信息，并展示出来。
    * */
    @ResponseBody
    @RequestMapping("/getGoodsList")
    public Result getGoods(@RequestBody GoodsQuery goodsQuery){
        goodsQuery.setPage(goodsQuery.getPage() - 1);
        System.out.println("前端访问到了getGoodsList");
        List<Resource> resourceList=goodsService.getGoods(goodsQuery);
        Long count = goodsService.getCount(goodsQuery);
        Result result = new Result();
        result.setMsg("查询成功");
        result.setCode(0);
        result.setCount(count);
        result.setData(resourceList);
        System.out.println("getGoods返回的结果："+resourceList.toString());
        return result;
    }
}
