package com.demo.FootPrint.service;

import com.demo.FootPrint.model.dto.UserAdminLoginDTO;
import com.demo.FootPrint.model.dto.UserOAuthDTO;
import com.demo.FootPrint.model.vo.UserVO;

import javax.servlet.http.HttpServletRequest;

/**
 * @description: 用户服务接口
 * @author: yyf 2018-11-11
 **/

public interface UserService {

    /**
     * 微信授权注册,获取用户信息并入库
     * @param userOAuthDTO 授权传输对象
     * @param request httpServletRequest,创建HttpSession
     */
    void oauth(UserOAuthDTO userOAuthDTO, HttpServletRequest request);


    /**
     * 微信登录
     * @param code 通过wx.login获取的短期凭证
     * @param request httpServletRequest,创建HttpSession
     */
    void login(String code, HttpServletRequest request);

    /**
     * 管理员登录
     * @param userAdminLoginDTO 管理员登录传输对象
     * @param request 请求
     */
    void adminLogin(UserAdminLoginDTO userAdminLoginDTO, HttpServletRequest request);

    /**
     * 获取个人信息
     *
     * @param userId 用户id
     * @return 用户视图
     */
    UserVO getMe(Integer userId);
}
