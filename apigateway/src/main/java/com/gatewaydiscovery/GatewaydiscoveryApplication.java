package com.gatewaydiscovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient; 

@SpringBootApplication
@EnableDiscoveryClient
public class GatewaydiscoveryApplication {

	public static void main(String[] args) {
		SpringApplication.run(GatewaydiscoveryApplication.class, args);
	}

}
