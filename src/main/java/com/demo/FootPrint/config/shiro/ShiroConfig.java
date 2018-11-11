package com.demo.FootPrint.config.shiro;

import org.apache.shiro.mgt.DefaultSessionStorageEvaluator;
import org.apache.shiro.mgt.DefaultSubjectDAO;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.session.mgt.ServletContainerSessionManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.HashMap;
import java.util.Map;

/**
 * @description: shiro配置类
 * @author: hlx 2018-08-19
 **/
@Configuration
public class ShiroConfig {

    // 注册管理器
    @Bean(name = "securityManager")
    public DefaultWebSecurityManager defaultWebSecurityManager(AuthService authService) {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        //设置自定义认证服务
        manager.setRealm(authService);
        //使用容器的session(之后被spring-session拦截)
        manager.setSessionManager(new ServletContainerSessionManager());
        //关闭shiro自带的session
        DefaultSubjectDAO subjectDAO = new DefaultSubjectDAO();
        DefaultSessionStorageEvaluator defaultSessionStorageEvaluator = new DefaultSessionStorageEvaluator();
        defaultSessionStorageEvaluator.setSessionStorageEnabled(false);
        subjectDAO.setSessionStorageEvaluator(defaultSessionStorageEvaluator);
        manager.setSubjectDAO(subjectDAO);
        return manager;
    }

    // 注册拦截器
    @Bean(name = "shiroFilter")
    public ShiroFilterFactoryBean factory(DefaultWebSecurityManager securityManager) {
        ShiroFilterFactoryBean factoryBean = new ShiroFilterFactoryBean();
        // 设置登录页,未登录时将自动跳转,采用error映射
        factoryBean.setLoginUrl("/error");
        // 添加自定义的拦截器authFilter,用于自定义登录处理逻辑
        Map<String, Filter> filterMap = new HashMap<>();
        filterMap.put("authFilter", new AuthFilter());
        filterMap.put("crosFilter", new CROSFilter());
        factoryBean.setFilters(filterMap);
        factoryBean.setSecurityManager(securityManager);
        Map<String, String> filterRuleMap = new HashMap<>();

        // 调试专用
        filterRuleMap.put("/**", "anon");

        // cros
        filterRuleMap.put("/**", "crosFilter");

//        // 匿名访问接口
        filterRuleMap.put("/user/oauth", "anon");
        filterRuleMap.put("/test/connect", "anon");
        filterRuleMap.put("/user/login", "anon");
        filterRuleMap.put("/user/xLogin", "anon");
        filterRuleMap.put("/time/uploadBack", "anon");

        // swagger-ui匿名访问
        filterRuleMap.put("/swagger-resources/**", "anon");
        filterRuleMap.put("/v2/api-docs", "anon");
        filterRuleMap.put("/swagger-ui.html", "anon");
        filterRuleMap.put("/webjars/**", "anon");

//        // 需要登录的接口
        filterRuleMap.put("/**", "authFilter,authc");
        factoryBean.setFilterChainDefinitionMap(filterRuleMap);
        return factoryBean;
    }

    // 解决BUG
    @Bean
    public static DefaultAdvisorAutoProxyCreator getDefaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator creator = new DefaultAdvisorAutoProxyCreator();
        // 解决无法正常映射请求BUG
        creator.setUsePrefix(true);
        return creator;
    }

}
