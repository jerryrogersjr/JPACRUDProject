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
		List<Automobile> cars = carDAO.findAll();
		model.addAttribute("cars", cars);
		return "WEB-INF/index.jsp";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getCars.do", method = RequestMethod.GET)
	public ModelAndView getCar(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Automobile car = carDAO.findCarById(id);
		mv.addObject("cars", car);
		mv.setViewName("WEB-INF/cars/show.jsp");

		return mv;

	}
	
	

}
