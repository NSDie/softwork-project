package com.demo.FootPrint.config;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @program: softwork-project
 * @description: modelMapper配置类
 * @author: Yyf
 * @create: 2018-11-11 20:08
 **/
@Configuration
public class ModelMapperConfig {

    // 注册mapper
    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }

}