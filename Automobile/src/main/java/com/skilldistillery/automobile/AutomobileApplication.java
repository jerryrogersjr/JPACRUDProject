package com.skilldistillery.automobile;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.skilldistillery.automobile")
public class AutomobileApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(AutomobileApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(AutomobileApplication.class, args);
//		SpringApplication.run(AutomobileApplication.class, args);
	}

}
