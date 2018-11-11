package com.demo.FootPrint.exception.resolver;

import com.demo.FootPrint.exception.error.ApiException;
import com.demo.FootPrint.model.po.ApiResult;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Collection;

/**
 * @program: softwork-project
 * @description: 全局异常处理器
 * @author: Yyf
 * @create: 2018-11-11 19:30
 **/
@Slf4j
@ControllerAdvice
public class ApiExceptionResolver {

    // AuthenticationException 异常处理(session引起)
    @ExceptionHandler(value = AuthenticationException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    @ResponseBody
    public ApiResult<String> resolveSessionException(AuthenticationException e) {
        ApiResult<String> apiResult = new ApiResult<>();
        log.info("捕获异常:" + e.getMessage());
        apiResult.setText("SESSION_INVALID");
        return apiResult;
    }

    // Exception异常处理(未知错误引起)
    @ExceptionHandler(value = {Exception.class})
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    @ResponseBody
    public ApiResult<String> resolveException(Exception ex) {
        ApiResult<String> apiResponse = new ApiResult<>(404, "未知错误", null);
        apiResponse.setText(ex.toString());
        log.error("捕获异常:" + ex.getMessage());
        ex.printStackTrace();
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ex.printStackTrace(new PrintStream(baos));
        // 获取较为详尽的异常信息,异常类:异常信息
        String[] exception = baos.toString().split("\n");
        log.error("ex[0]->>" + exception[0]);
        // 紧急事件,邮件通知
        //mailService.sendMail("603773962@qq.com",exception[1]);
        return apiResponse;
    }


    // Validation Exception异常处理(JavaX验证框架异常,RequestParam参数验证失败时抛出)
    @ExceptionHandler(value = ConstraintViolationException.class)
    @ResponseStatus(value = HttpStatus.I_AM_A_TEAPOT)
    @ResponseBody
    public ApiResult<String> resolveValidationException(ConstraintViolationException ex) {
        Collection<ConstraintViolation<?>> violations = ex.getConstraintViolations();
        for (ConstraintViolation violation : violations) {
            String field = violation.getPropertyPath().toString().split("\\.")[1];
            String message = violation.getMessage();
            log.info(field + ":" +message);
        }
        ApiResult<String> apiResult = new ApiResult<>();
        apiResult.setStatus(13);
        apiResult.setText("PARAM_INVALID");
        return apiResult;
    }

    // Validation Exception异常处理(Spring验证框架异常,RequestBody参数验证失败时抛出)
    @ExceptionHandler(value = MethodArgumentNotValidException.class)
    @ResponseStatus(value = HttpStatus.I_AM_A_TEAPOT)
    @ResponseBody
    public ApiResult<String> resolveValidationException(MethodArgumentNotValidException ex) {
        BindingResult bindingResult = ex.getBindingResult();
        assert (bindingResult.getFieldError()!= null);
        log.info(bindingResult.getFieldError().getField() + ":" + bindingResult.getFieldError().getDefaultMessage());
        ApiResult<String> apiResult = new ApiResult<>();
        apiResult.setStatus(13);
        apiResult.setText("PARAM_INVALID");
        return apiResult;
    }

    // Api Exception异常处理(业务相关错误)
    @ExceptionHandler(value = ApiException.class)
    @ResponseStatus(value = HttpStatus.I_AM_A_TEAPOT)
    @ResponseBody
    public ApiResult<String> resolveApiException(ApiException ex) {
        ApiResult<String> apiResult = new ApiResult<>();
        apiResult.setStatus(ex.getCode());
        apiResult.setText(ex.getMessage());
        return apiResult;
    }

}
