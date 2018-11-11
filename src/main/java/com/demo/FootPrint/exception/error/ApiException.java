package com.demo.FootPrint.exception.error;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Getter;

/**
 * @program: softwork-project
 * @description: 自定义api异常, 参数校验或业务处理时所抛出的异常
 * @author: Yyf
 * @create: 2018-11-11 19:31
 **/
@Getter
public class ApiException extends RuntimeException {

    private static ObjectMapper mapper = new ObjectMapper();

    private Integer code;

    /**
     * 构造api异常
     * @param apiError 实现api错误接口的错误枚举类
     */
    public ApiException(ApiError apiError) {
        super(apiError.getMsg());
        this.code = apiError.getCode();
    }

}
