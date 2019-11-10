package com.skilldistillery.automobile.data;

import java.util.List;

import com.skilldistillery.automobile.entities.Automobile;

public interface AutomobileDAO {
	
	public Automobile findCarById(int id);
	
	public Automobile findCarByKeyword(String keyword);
	
	public Automobile addCar(Automobile car);
	
	public Automobile deleteCar(Automobile car);
	
	public Automobile updateCar(Automobile car, int id);
	
	public List<Automobile> findAll();
}
