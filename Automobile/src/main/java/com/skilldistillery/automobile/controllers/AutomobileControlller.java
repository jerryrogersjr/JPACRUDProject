package com.skilldistillery.automobile.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
//		System.err.println("***in index in controller");
//		List<Automobile> cars = carDAO.findAll();
//		model.addAttribute("cars", cars);
		return "WEB-INF/index.jsp";
		// return "index"; // if using a ViewResolver.
	}

//	@RequestMapping(path = "getCars.do", method = RequestMethod.GET)
//	public String getCar(Model model, String cid) {
//		if (cid.isEmpty()) {
//			return "WEB-INF/index.jsp";
//		} else {
//			Integer id;
//			try {
//				id = Integer.parseInt(cid);
//			} catch (NumberFormatException e) {
//				return "WEB-INF/index.jsp";
//			}
//			Automobile auto = carDAO.findCarById(id);
//			model.addAttribute("car", auto);
//			return "WEB-INF/show.jsp";
//		}
	@RequestMapping(path = "getCars.do", method = RequestMethod.GET)
	public ModelAndView getCar(@RequestParam("id") int id) {
//		System.err.println("***in getCar in controller");
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
	public String updateCar(Model model, Automobile car) {
		Automobile updatedCar = carDAO.updateCar(car);
		model.addAttribute("car", updatedCar);
		return "WEB-INF/cars/show.jsp";
	}

	@RequestMapping(path = "deleteCar.do", method = RequestMethod.POST)
	public String deletCar(Model model, int id) {
		if (carDAO.deleteCar(id)) {
			return "WEB-INF/index.jsp";
		} else {
			model.addAttribute("car", carDAO.findCarById(id));
			return "WEB-INF/cars/show.jsp";
		}
	}

	@RequestMapping(path = "listCars.do", method = RequestMethod.GET)
	public ModelAndView showList() {
		ModelAndView mv = new ModelAndView();
		List<Automobile> cars = carDAO.findAll();
		mv.addObject("cars", cars);
		mv.setViewName("WEB-INF/cars/showList.jsp");
		return mv;

	}
}
