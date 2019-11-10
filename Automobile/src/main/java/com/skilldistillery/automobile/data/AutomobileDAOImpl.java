package com.skilldistillery.automobile.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.automobile.entities.Automobile;

@Transactional // Spring automatically start a transaction for each DAO method
@Service // allow Spring Boot to create the D A O bean
public class AutomobileDAOImpl implements AutomobileDAO {

	@PersistenceContext // allows Spring Boot to autowire this EntityManager
	private EntityManager em;

	@Override
	public Automobile findCarById(int id) {
		return em.find(Automobile.class, id);
	}

	

	@Override
	public Automobile findCarByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Automobile addCar(Automobile car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Automobile deleteCar(Automobile car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Automobile updateCar(Automobile car) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List<Automobile> findAll() {
		return em.createQuery("select c from Automobile c", Automobile.class).getResultList();
	}

}
