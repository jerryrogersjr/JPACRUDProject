package com.skilldistillery.cars.data;

import java.util.List;

import com.skilldistillery.cars.entities.Cars;

public interface CarsDAO {
	
	public Cars findCarById(int id);
	
	public Cars findCarByKeyword(String keyword);
	
	public Cars addCar(Cars car);
	
	public Cars deleteCar(Cars car);
	
	public Cars updateCar(Cars car);
	
	public List<Cars> findAll();
}
