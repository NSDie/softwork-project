package com.demo.FootPrint.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @program: softwork-project
 * @description: JsonMapper配置类
 * @author: Yyf
 * @create: 2018-11-11 20:53
 **/
@Configuration
public class JsonMapperConfig {

    @Bean
    public ObjectMapper objectMapper() {
        return new ObjectMapper();
    }

}
