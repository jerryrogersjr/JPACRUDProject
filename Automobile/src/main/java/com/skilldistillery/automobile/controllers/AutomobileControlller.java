package com.skilldistillery.automobile.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.automobile.data.AutomobileDAO;
import com.skilldistillery.automobile.entities.Automobile;

@Controller
public class AutomobileControlller {

	@Autowired
	private AutomobileDAO carDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getCars.do", method = RequestMethod.GET)
	public ModelAndView getCar(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Automobile car = carDAO.findCarById(id);
		mv.addObject("car", car);
		mv.setViewName("WEB-INF/cars/show.jsp");
		return mv;

	}

	@RequestMapping(path = "addCar.do", method = RequestMethod.POST)
	public ModelAndView addCar(Automobile car) {
		ModelAndView mv = new ModelAndView();
		Automobile newCar = carDAO.addCar(car);
		mv.addObject("car", newCar);
		mv.setViewName("WEB-INF/cars/show.jsp");
		return mv;

	}

	@RequestMapping(path = "addCar.do", method = RequestMethod.GET)
	public String addCar() {
		return "WEB-INF/cars/add.jsp";
	}

	@RequestMapping(path = "updateCar.do", method = RequestMethod.POST)
	public ModelAndView updateCar(Automobile updatedCar, Integer id) {
		System.out.println("update car id: " + id);
		ModelAndView mv = new ModelAndView();
		Automobile car = carDAO.updateCar(updatedCar, id);
		mv.addObject("car", car);
		mv.setViewName("WEB-INF/cars/show.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteCar.do", method = RequestMethod.POST)
	public String deletCar(int id) {
		carDAO.deleteCar(id);
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "listCars.do", method = RequestMethod.GET)
	public ModelAndView showList() {
		ModelAndView mv = new ModelAndView();
		List<Automobile> cars = carDAO.findAll();
		mv.addObject("cars", cars);
		mv.setViewName("WEB-INF/cars/showlist.jsp");
		return mv;
	}
}
