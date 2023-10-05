package com.example.springemployeeservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableDiscoveryClient
public class SpringEmployeeServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringEmployeeServiceApplication.class, args);

	}

}
