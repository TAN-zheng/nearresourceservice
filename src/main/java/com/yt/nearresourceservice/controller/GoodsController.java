package com.yt.nearresourceservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {
    @RequestMapping("/toGoods")
    public String toGoods(){
        return "views/template/goodslist";
    }
}
