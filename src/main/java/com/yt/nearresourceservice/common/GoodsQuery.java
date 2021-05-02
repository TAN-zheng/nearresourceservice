package com.yt.nearresourceservice.common;

import lombok.Data;

@Data
public class GoodsQuery {
    private Long page;
    private Long limit;
    private String resourcename;
    private String pattern;//资源提供方式
    private Long price;//价格
    private String type;//价格
}
