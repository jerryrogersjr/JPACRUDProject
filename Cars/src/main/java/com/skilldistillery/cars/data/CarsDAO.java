package com.skilldistillery.cars.data;

import java.util.List;

import com.skilldistillery.cars.entities.Cars;

public interface CarsDAO {
	
	public Cars findCarById();
	
	public Cars findCarByKeyword();
	
	public Cars addCar();
	
	public Cars deleteCar();
	
	public Cars updateCar();
	
	public List<Cars> findAll();
}
