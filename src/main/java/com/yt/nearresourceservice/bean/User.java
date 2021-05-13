package com.yt.nearresourceservice.bean;

import lombok.Data;

@Data
public class User {
    private Long id;//唯一标识
    private Long age;//年龄
    private String name;//姓名
    private String sex;//性别
    private String phone;//电话
    private String account;//账户
    private String password;//密码
    private String address;//地址
    private String identitycard;//身份证

}
