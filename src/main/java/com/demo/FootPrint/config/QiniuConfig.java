package com.demo.FootPrint.config;

import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

/**
 * @program: softwork-project
 * @description: 七牛配置文件
 * @author: Yyf
 * @create: 2018-11-13 17:00
 **/
@Configuration
@ConfigurationProperties(prefix = "qiniu")
@Data
public class QiniuConfig {

    private String accessKey;

    private String secretKey;

    // 存储空间名
    private String bucket;

    // 访问域名
    private String cloudUrl;

    // 凭证有效期(s)
    private Long tokenExpires;

    // 上传图片回调的地址
    private String backUrl;

    // 上传图片回调的秘钥,验证回调消息合法性
    private String backSecretKey;

    // 上传策略
    private StringMap stringMap;

    // 用于产生凭证的类?
    private Auth auth;

    @PostConstruct
    public void init() {
        // 初始化上传策略
        stringMap = new StringMap();
        // 新增模式
        stringMap.put("insertOnly", 1);

        // 回调
        stringMap.put("callbackUrl",backUrl);
        stringMap.put("callbackBodyType", "application/json");

        // 文件配置,最大10MB,只允许图片类型
        stringMap.put("fsizeLimit", 20 * 1024 * 1024);
        stringMap.put("mimeLimit", "image/*");

        // 初始化凭证
        auth = Auth.create(accessKey, secretKey);
    }

    /**
     * 创建一个七牛OOS上传凭证
     * @param key 文件名
     */
    public String createToken(String key) {
        return auth.uploadToken(bucket, key, tokenExpires, stringMap);
    }

}
