package com.skilldistillery.cars.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cars {

	// fields

	private String car;
	private double mpg;
	private int cylinders;
	private double displacement;
	private double horsepower;
	private double weight;
	private double acceleration;
	private int year;
	private String origin;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	// constructors

	public Cars() {
		super();
	}

	// methods

	public int getId() {
		return id;
	}

	public String getCar() {
		return car;
	}

	public void setCar(String car) {
		this.car = car;
	}

	public double getMpg() {
		return mpg;
	}

	public void setMpg(double mpg) {
		this.mpg = mpg;
	}

	public int getCylinders() {
		return cylinders;
	}

	public void setCylinders(int cylinders) {
		this.cylinders = cylinders;
	}

	public double getDisplacement() {
		return displacement;
	}

	public void setDisplacement(double displacement) {
		this.displacement = displacement;
	}

	public double getHorsepower() {
		return horsepower;
	}

	public void setHorsepower(double horsepower) {
		this.horsepower = horsepower;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public double getAcceleration() {
		return acceleration;
	}

	public void setAcceleration(double acceleration) {
		this.acceleration = acceleration;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	@Override
	public String toString() {
		return "Cars [id=" + id + ", car=" + car + ", mpg=" + mpg + ", cylinders=" + cylinders + ", displacement="
				+ displacement + ", horsepower=" + horsepower + ", weight=" + weight + ", acceleration=" + acceleration
				+ ", year=" + year + ", origin=" + origin + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(acceleration);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((car == null) ? 0 : car.hashCode());
		result = prime * result + cylinders;
		temp = Double.doubleToLongBits(displacement);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(horsepower);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + id;
		temp = Double.doubleToLongBits(mpg);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((origin == null) ? 0 : origin.hashCode());
		temp = Double.doubleToLongBits(weight);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + year;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cars other = (Cars) obj;
		if (Double.doubleToLongBits(acceleration) != Double.doubleToLongBits(other.acceleration))
			return false;
		if (car == null) {
			if (other.car != null)
				return false;
		} else if (!car.equals(other.car))
			return false;
		if (cylinders != other.cylinders)
			return false;
		if (Double.doubleToLongBits(displacement) != Double.doubleToLongBits(other.displacement))
			return false;
		if (Double.doubleToLongBits(horsepower) != Double.doubleToLongBits(other.horsepower))
			return false;
		if (id != other.id)
			return false;
		if (Double.doubleToLongBits(mpg) != Double.doubleToLongBits(other.mpg))
			return false;
		if (origin == null) {
			if (other.origin != null)
				return false;
		} else if (!origin.equals(other.origin))
			return false;
		if (Double.doubleToLongBits(weight) != Double.doubleToLongBits(other.weight))
			return false;
		if (year != other.year)
			return false;
		return true;
	}

}
