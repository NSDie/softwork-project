package com.demo.FootPrint.model.po;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @program: softwork-project
 * @description: 微信错误, 当微信接口访问异常时抛出
 * @author: Yyf
 * @create: 2018-11-11 19:23
 **/
@Data
public class WechatError implements Serializable {

    @JsonProperty("errcode")
    private Integer errcode;

    @JsonProperty("errmsg")
    private String errmsg;

    public WechatError() {
    }
}