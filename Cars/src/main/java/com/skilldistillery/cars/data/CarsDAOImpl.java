package com.skilldistillery.cars.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.cars.entities.Cars;

@Transactional // Spring automatically start a transaction for each DAO method
@Service // allow Spring Boot to create the D A O bean
public class CarsDAOImpl implements CarsDAO {

	@PersistenceContext // allows Spring Boot to autowire this EntityManager
	private EntityManager em;

	@Override
	public Cars findCarById(int id) {
		return em.find(Cars.class, id);
	}

	@Override
	public Cars findCarByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cars addCar(Cars car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cars deleteCar(Cars car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cars updateCar(Cars car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Cars> findAll() {
		String sql = "SELECT cars From Cars cars";
		return em.createQuery(sql, Cars.class).getResultList();
	}

}
