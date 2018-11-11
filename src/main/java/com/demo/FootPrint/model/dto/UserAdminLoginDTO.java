package com.demo.FootPrint.model.dto;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @program: softwork-project
 * @description: 用户管理员登录传输对象
 * @author: Yyf
 * @create: 2018-11-11 19:25
 **/
@Data
@ApiModel(description = "管理员登录传输对象")
public class UserAdminLoginDTO implements Serializable {

    @NotNull
    private String name;

    @NotNull
    private String pass;

    public UserAdminLoginDTO() {
    }
}
