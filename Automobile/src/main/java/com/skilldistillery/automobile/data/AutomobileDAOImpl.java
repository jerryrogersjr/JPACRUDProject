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

	@PersistenceContext // allows Spring Boot to a u to wire this EntityManager
	private EntityManager em;

	@Override
	public Automobile findCarById(int id) {
		return em.find(Automobile.class, id);
	}


	@Override
	public List<Automobile> findAll() {
		return em.createQuery("SELECT cars FROM Automobile cars ORDER BY cars.makeModel", Automobile.class)
				.getResultList();
	}

	@Override
	public List<Automobile> findCarByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Automobile addCar(Automobile car) {
		em.persist(car);
		return car;
	}

	@Override
	public boolean deleteCar(int id) {
		Automobile deleteCar = em.find(Automobile.class, id);
		em.remove(deleteCar);
		return (em.find(Automobile.class, id) == null);
	}

	@Override
	public Automobile updateCar(Automobile updatedCar, int carId) {
		Automobile managed = em.find(Automobile.class, carId); // explicitely sending in the car id otherwise comes in null. This was my update hangup. 
		System.err.println("********************************************");
		System.out.println(updatedCar);
		System.out.println(managed);
		managed.setMakeModel(updatedCar.getMakeModel());
		managed.setMpg(updatedCar.getMpg());
		managed.setCylinders(updatedCar.getCylinders());
		managed.setDisplacement(updatedCar.getDisplacement());
		managed.setHorsepower(updatedCar.getHorsepower());
		managed.setWeight(updatedCar.getWeight());
		managed.setAcceleration(updatedCar.getAcceleration());
		managed.setYear(updatedCar.getYear());
//		em.persist(carUpdate);
//		em.merge(carUpdate);
		return managed;
	}


}
