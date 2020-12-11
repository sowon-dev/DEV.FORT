package com.devfort.Application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import dao.MemberDaoImpl;

@SpringBootApplication
public class DevfortApplication {

	public static void main(String[] args) {
		SpringApplication.run(DevfortApplication.class, args);
		
	}

}
