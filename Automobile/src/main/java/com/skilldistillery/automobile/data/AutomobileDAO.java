package com.skilldistillery.automobile.data;

import java.util.List;

import com.skilldistillery.automobile.entities.Automobile;

public interface AutomobileDAO {

	public Automobile findCarById(int id);

	public List<Automobile> findCarByKeyword(String keyword);

	public Automobile addCar(Automobile car);

	public boolean deleteCar(int id);

	public Automobile updateCar(Automobile car);

	public List<Automobile> findAll();

//	public List<Automobile> findAllByMake();
}
