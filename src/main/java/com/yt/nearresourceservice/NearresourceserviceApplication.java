package com.yt.nearresourceservice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//扫描dao,指定dao 接口的位置。
@MapperScan("com.yt.nearresourceservice.dao")
public class NearresourceserviceApplication {

    public static void main(String[] args) {
        SpringApplication.run(NearresourceserviceApplication.class, args);
    }

}
