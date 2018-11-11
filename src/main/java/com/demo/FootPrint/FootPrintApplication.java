package com.demo.FootPrint;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
@MapperScan("com.demo.FootPrint.dao")
public class FootPrintApplication {

	public static void main(String[] args) {
		SpringApplication.run(FootPrintApplication.class, args);
	}
}
