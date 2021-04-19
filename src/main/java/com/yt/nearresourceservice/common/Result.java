package com.yt.nearresourceservice.common;

import lombok.Data;

@Data
public class Result {
    private Long code;
    private String msg;
    private Long count;
    private Object data;
}
