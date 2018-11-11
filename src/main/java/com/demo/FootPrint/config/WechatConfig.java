package com.demo.FootPrint.config;

import com.demo.FootPrint.util.WechatUtil;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

/**
 * @program: softwork-project
 * @description: 微信配置类
 * @author: Yyf
 * @create: 2018-11-11 19:34
 **/
@Configuration
@ConfigurationProperties(prefix = "wechat")
@Data
public class WechatConfig {

    private String appID;

    private String appSecret;

    @PostConstruct
    public void initAccessToken() {
        // 将微信配置注入微信工具类中
        WechatUtil.init(this);
    }

}
