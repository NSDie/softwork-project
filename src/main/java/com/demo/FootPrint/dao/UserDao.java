package com.demo.FootPrint.dao;

import com.demo.FootPrint.model.po.WechatUser;
import org.apache.ibatis.annotations.Param;

/**
 * @program: softwork-project
 * @description: 用户类dao
 * @author: Yyf
 * @create: 2018-11-11 18:53
 **/
public interface UserDao {
    void save(WechatUser wechatUser);

    WechatUser getByOpenId(String openId);

    WechatUser get(Integer id);

    String getSessionIdByUserId(Integer userId);

    void updateSessionIdByUserId(@Param("userId") Integer userId, @Param("sessionId") String sessionId);

    WechatUser getInfo(Integer userId);
}
