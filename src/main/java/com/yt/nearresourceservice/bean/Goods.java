package com.yt.nearresourceservice.bean;

import lombok.Data;

@Data
public class Goods {
    private Long id;
    private Long sponsorid;
    private String src;
    private String imgname;
    private Long number;//提供的数量
    private Long price;//价格
    private String resourcename;//资源名称
    private String description;//资源的详细描述
    private String type;//资源类型
    private String pattern;//资源提供方式
    private String state;//状态
    private String imageurl;//图片路径
    private String contact;//联系方式
    private String time;//提供时间
}
