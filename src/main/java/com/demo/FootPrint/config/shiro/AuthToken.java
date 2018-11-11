package com.demo.FootPrint.config.shiro;

import lombok.Data;
import org.apache.shiro.authc.AuthenticationToken;

import javax.servlet.http.HttpSession;

/**
 * @description: shiro认证实体,定义token,以及解析token方法
 * @author: hlx 2018-08-19
 **/
@Data
public class AuthToken implements AuthenticationToken{

    //容器中Session/Spring-session
    private HttpSession session;

    AuthToken(HttpSession session) {
        this.session = session;
    }

    //获取身份(用户名)
    @Override
    public Object getPrincipal() {
        return session.getAttribute("userId");
    }

    //获取凭证(密码)
    @Override
    public Object getCredentials() {
        return session.getId();
    }

    @Override
    public String toString() {
        return "sessionId" + ":" + session.getId();
    }
}
