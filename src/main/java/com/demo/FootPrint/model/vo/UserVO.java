package com.demo.FootPrint.model.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * @program: softwork-project
 * @description: 用户视图
 * @author: Yyf
 * @create: 2018-11-11 19:27
 **/
@Data
public class UserVO implements Serializable {

    private Integer userId;

    private String avatarUrl;

    private String openId;

    private Integer cityNum;

    private Integer proNum;

    private ArrayList<Integer> achievement;
}
