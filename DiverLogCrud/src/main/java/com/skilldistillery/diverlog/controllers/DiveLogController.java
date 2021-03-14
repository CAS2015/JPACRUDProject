package com.skilldistillery.diverlog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.diverlog.data.DiverLogDAO;
import com.skilldistillery.diverlog.entities.Dive;

@Controller
public class DiveLogController {

	@Autowired
	private DiverLogDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("logList", dao.findAll());	
		return "index";
	}
	
	
	@RequestMapping(path= "getLogDetails.do")
	public ModelAndView getDiveDetails(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dive", dao.findById(id));	
		mv.setViewName("details");
		return mv;
	}
	
	@RequestMapping(path= "filterDives.do")
	public ModelAndView filterDive(Integer id, String location, String stateProvince, String country, String keyword, Integer rating) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("logList", dao.findFilteredDives(id, location, stateProvince, country, keyword, rating));	
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path= "addDive.do", method= RequestMethod.POST)
	public ModelAndView addDive(Dive dive, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("added", true);	
		redir.addFlashAttribute("dive", dao.createLog(dive));	
		mv.setViewName("redirect:diveAdded.do");
		return mv;
	}
	
	@RequestMapping(path= "diveAdded.do", method= RequestMethod.GET)
	public ModelAndView diveAdded() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path= "deleteDive.do", method= RequestMethod.POST)
	public ModelAndView deleteDive(int id, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("deleted", true);	
		redir.addFlashAttribute("success", dao.deleteLog(dao.findById(id)));	
		mv.setViewName("redirect:diveDeleted.do");
		return mv;
	}
	
	@RequestMapping(path= "diveDeleted.do", method= RequestMethod.GET)
	public ModelAndView diveDeleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path= "updateDive.do", method= RequestMethod.POST)
	public ModelAndView updateDive(Dive dive, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("updated", true);	
		redir.addFlashAttribute("dive", dao.updateLog(dive));	
		mv.setViewName("redirect:diveUpdated.do");
		return mv;
	}
	
	@RequestMapping(path= "diveUpdated.do", method= RequestMethod.GET)
	public ModelAndView diveUpdated() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path= "addDiveForm.do")
	public String addDiveForm() {
		return "addDive";
	}
	
	
	@RequestMapping(path= "updateDiveForm.do")
	public ModelAndView updateDive(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dive", dao.findById(id));	
		mv.setViewName("updateDive");
		return mv;
	}
}
