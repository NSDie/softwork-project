package com.demo.FootPrint.model.po;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: softwork-project
 * @description: access_token
 * @author: Yyf
 * @create: 2018-11-11 19:23
 **/
@Data
public class UserAccessToken implements Serializable {

    private String access_token;

    private Integer expires_in;

    private String refresh_token;

    private String openid;

    private String scope;

    public UserAccessToken() {
    }

}
