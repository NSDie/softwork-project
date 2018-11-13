package com.demo.FootPrint.exception.error;

/**
 * @program: softwork-project
 * @description: 照片错误枚举
 * @author: Yyf
 * @create: 2018-11-13 17:25
 **/
public enum  PhotoErrorEnum implements ApiError{

    // 回调消息错误
    BACK_INVALID(130,"BACK_INVALID"),

    // 找不到时光
    NOT_FOUND(131,"NOT_FOUND"),

    // 非自己时光
    NOT_ME(132, "NOT_ME");

    private Integer code;

    private String msg;

    PhotoErrorEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    @Override
    public String getMsg() {
        return msg;
    }

    @Override
    public Integer getCode() {
        return code;
    }
}
