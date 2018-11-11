package com.demo.FootPrint.controller;

import com.demo.FootPrint.model.dto.UserAdminLoginDTO;
import com.demo.FootPrint.model.dto.UserOAuthDTO;
import com.demo.FootPrint.model.po.ApiResult;
import com.demo.FootPrint.model.vo.UserVO;
import com.demo.FootPrint.service.UserService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.constraints.Size;

/**
 * @program: softwork-project
 * @description: 用户控制层
 * @author: Yyf
 * @create: 2018-11-11 20:32
 **/
@Slf4j
@Validated
@RestController
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @ApiOperation(value = "授权注册", notes = "第一次访问时需要,注册完成的同时完成登录,不需要进行登录")
    @PostMapping("/oauth")
    public ApiResult<String> oauth(@RequestBody @Valid UserOAuthDTO userOAuthDTO, HttpServletRequest request) {
        userService.oauth(userOAuthDTO, request);
        ApiResult<String> apiResult = new ApiResult<>();
        apiResult.setText("oauth success");
        return apiResult;
    }

    @ApiOperation(value = "登录", notes = "已经授权的情况下进行")
    @ApiImplicitParam(name = "code", value = "微信短期凭证")
    @GetMapping("/login")
    public ApiResult<String> login(@RequestParam("code") @Size(min = 1, max = 255) String code, HttpServletRequest request) {
        userService.login(code, request);
        ApiResult<String> apiResult = new ApiResult<>();
        apiResult.setText("login success");
        return apiResult;
    }

    @ApiOperation(value = "模拟登录", notes = "模拟微信登录,测试专用")
    @GetMapping("/xLogin")
    public ApiResult<String> xLogin(HttpSession session) {
        session.setAttribute("userId", 1);
        ApiResult<String> apiResult = new ApiResult<>();
        apiResult.setText("login success");
        return apiResult;
    }

    @ApiOperation(value = "管理员登录")
    @PostMapping("/adminLogin")
    public ApiResult<String> adminLogin(@RequestBody @Valid UserAdminLoginDTO userAdminLoginDTO, HttpServletRequest request) {
        ApiResult<String> apiResult = new ApiResult<>();
        userService.adminLogin(userAdminLoginDTO, request);
        apiResult.setText("admin login success");
        return apiResult;
    }

    @ApiOperation(value = "个人信息")
    @GetMapping("/me")
    public ApiResult<UserVO> getMe(HttpSession session) {
        ApiResult<UserVO> apiResult = new ApiResult<>();
        UserVO userVO = userService.getMe((Integer) session.getAttribute("userId"));
        apiResult.setData(userVO);
        return apiResult;
    }

}
