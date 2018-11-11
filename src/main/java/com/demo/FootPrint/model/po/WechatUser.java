package com.demo.FootPrint.model.po;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @program: softwork-project
 * @description: 微信用户实体
 * @author: Yyf
 * @create: 2018-11-11 19:17
 **/
@Data
// 忽略垃圾字段!
@JsonIgnoreProperties(ignoreUnknown = true)
public class WechatUser implements Serializable {

    @JsonProperty("userId")
    private Integer userId;

    @JsonProperty("country")
    private String country;

    @JsonProperty("gender")
    private Integer gender;

    @JsonProperty("province")
    private String province;

    @JsonProperty("city")
    private String city;

    @JsonProperty("avatarUrl")
    private String avatarUrl;

    @JsonProperty("openId")
    private String openId;

    @JsonProperty("nickName")
    private String nickName;

    @JsonProperty("language")
    private String language;

    @JsonProperty("createTime")
    private Long createTime;

    private String sessionId;

    public WechatUser() {
    }
}