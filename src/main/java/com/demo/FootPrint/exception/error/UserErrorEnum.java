package com.demo.FootPrint.exception.error;

/**
 * @program: softwork-project
 * @description: 用户错误枚举
 * @author: Yyf
 * @create: 2018-11-11 19:31
 **/
public enum UserErrorEnum implements ApiError {

    // code非法
    CODE_INVALID(130,"CODE_INVALID"),

    // 尚未注册
    OAUTH_NOT_FOUND(131,"OAUTH_NOT_FOUND"),

    // 密码错误
    PASS_INVALID(132, "PASS_INVALID");

    // 响应码
    private final int code;

    // 提示信息
    private final String message;

    UserErrorEnum(int code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public String getMsg() {
        return message;
    }

    @Override
    public Integer getCode() {
        return code;
    }

}
