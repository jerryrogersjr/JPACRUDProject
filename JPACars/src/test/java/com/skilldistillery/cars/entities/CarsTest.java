package com.skilldistillery.cars.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class CarsTest {
	
	static private EntityManagerFactory emf;
	private EntityManager em;
	private Cars car;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACars");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		car = em.find(Cars.class, 2);
	}

	@AfterEach
	void tearDown() throws Exception {
		car = null;
		em.close();
	}
	@Disabled
	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	@Test
	@DisplayName("test Cars entity connection")
	void testCars() {
		assertNotNull(car);
		car.getCar().toLowerCase().contains("chevrolet");
		assertEquals(18, car.getMpg());
		assertEquals(8, car.getCylinders());
		assertEquals(307, car.getDisplacement());
		assertEquals(130, car.getHorsepower());
		assertEquals(3504, car.getWeight());
		assertEquals(12, car.getAcceleration());
		assertEquals(70, car.getYear());
		assertEquals("US", car.getOrigin().toUpperCase());
		assertEquals(2, car.getId());
		
	}
	


}
