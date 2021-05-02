package com.yt.nearresourceservice.common;

import lombok.Data;

@Data
public class Result {
    private int code;
    private String msg;
    private Long count;
    private Object data;
}
