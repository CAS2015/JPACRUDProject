package com.skilldistillery.diverlog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.diverlog.data.DiverLogDAO;

@Controller
public class DiveLogController {

	@Autowired
	private DiverLogDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("LogList", dao.findAll());	
		return "index";
	}
	
	
	@RequestMapping(path= "getLogDetails.do")
	public ModelAndView getDiveDetails(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("log", dao.findById(id));	
		mv.setViewName("details");
		return mv;
	}
	
	@RequestMapping(path= "filterDives.do")
	public ModelAndView filterDive(Integer id, String location, String country, String keyword, Integer rating) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("LogList", dao.findFilteredDives(id, location, country, keyword, rating));	
		mv.setViewName("index");
		return mv;
	}
}
