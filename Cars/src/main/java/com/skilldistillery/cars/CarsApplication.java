package com.skilldistillery.cars;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldillery.JPACars")
public class CarsApplication {

	public static void main(String[] args) {
		SpringApplication.run(CarsApplication.class, args);
	}

}
