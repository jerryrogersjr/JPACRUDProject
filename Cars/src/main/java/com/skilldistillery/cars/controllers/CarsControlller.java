package com.skilldistillery.cars.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.cars.data.CarsDAO;
import com.skilldistillery.cars.entities.Cars;

public class CarsControlller {

	@Autowired
	private CarsDAO carsDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Cars> cars = carsDAO.findAll();
		model.addAttribute("cars", cars);
		return "WEB-INF/index.jsp";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getCars.do", method = RequestMethod.GET)
	public ModelAndView getCar(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Cars car = carsDAO.findCarById(id);
		mv.addObject("cars", car);
		mv.setViewName("WEB-INF/cars/show.jsp");

		return mv;

	}

}
