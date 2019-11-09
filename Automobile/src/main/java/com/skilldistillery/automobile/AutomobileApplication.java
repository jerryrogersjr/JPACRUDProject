package com.skilldistillery.automobile;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldillery.jpaautomobile")
public class AutomobileApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutomobileApplication.class, args);
	}

}
