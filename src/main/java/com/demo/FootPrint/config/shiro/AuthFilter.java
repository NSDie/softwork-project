package com.demo.FootPrint.config.shiro;

import org.apache.shiro.web.filter.authc.BasicHttpAuthenticationFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @description: 认证拦截器, 拦截登录请求, 自定义登录逻辑
 * @author: hlx 2018-08-19
 **/
public class AuthFilter extends BasicHttpAuthenticationFilter {

    private static final Logger logger = LoggerFactory.getLogger(AuthFilter.class);

    //检测请求是否需要鉴权(用户登录判断)
    @Override
    protected boolean isLoginAttempt(ServletRequest request, ServletResponse response) {
        HttpServletRequest req = (HttpServletRequest) request;
        String authorization = req.getHeader("S-TOKEN");
        return authorization != null;
    }

    //执行登录判断逻辑
    @Override
    protected boolean executeLogin(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        // 获取session,且不自动创建
        HttpSession httpSession = httpServletRequest.getSession(false);
        // 无session代表请求头无session标志,或者该session标志无效(过期/错误)
        if (httpSession == null) {
            return false;
        }
        AuthToken authToken = new AuthToken(httpSession);
        //登录判断,错误则抛出异常
        getSubject(request, response).login(authToken);
        logger.info("token->>" + authToken + "登录验证成功");
        return true;
    }

    //不阻挡所有请求，请求的最终合法性由接口上的注解判断
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        if (isLoginAttempt(request, response)) {
            try {
                executeLogin(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }

}
