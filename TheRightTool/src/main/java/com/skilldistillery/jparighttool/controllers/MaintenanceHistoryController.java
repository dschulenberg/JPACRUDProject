package com.skilldistillery.jparighttool.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jparighttool.data.MaintenanceHistoryDAO;
import com.skilldistillery.jparighttool.entities.MaintenanceHistory;

@Controller
public class MaintenanceHistoryController {
	
	@Autowired
	private MaintenanceHistoryDAO dao;
	
	@RequestMapping ({"/","index.do"}) 
	public String index() {
		return "index";
	}
	@RequestMapping (path ="home.do") 
	public String home() {
		
		return "home";
		
	}
	@RequestMapping(path= "getHistory.do",method = RequestMethod.GET)
	public String getHistory(Integer mhid, Model model) {
		model.addAttribute("history", dao.findById(mhid));   //DELETE LATER
		return "results";
	}
	
	@RequestMapping(path = "getAllHistory.do", method = RequestMethod.GET)
	public String getAllHistory(Model model) {
		model.addAttribute("historys", dao.findAll());
		
		return "results";
	}
	
	@RequestMapping(path = "addMaintenance.do", method = RequestMethod.POST)
	public String addMaintenance(MaintenanceHistory history,Model model) {
		model.addAttribute("history", dao.addMaintenanceHistory(history));
		
		return "results";
	}
	@RequestMapping(path = "addMaintenance.do")
	public String addMaintenance() {		
		return "addMaintenance";
	}
	@RequestMapping(path = "search.do")
	public String getHistory() {
		
	  return "search";
	}
	@RequestMapping(path = "updateMaintenance.do", method = RequestMethod.POST)
	public String updateMaintenance(MaintenanceHistory history,Model model) {
		model.addAttribute("history", dao.updateMaintenanceHistory(history));
		
		return "results";
	}
	  @RequestMapping(path = "updateMaintenance.do", method = RequestMethod.GET)
	  public String updateMaintenance(Integer mhid,Model model) {
		  model.addAttribute("history", dao.findById(mhid));
		  return "updateMaintenance"; 
	  }
	@RequestMapping(path = "deleteMaintenance.do",method = RequestMethod.GET)
	public String deleteMaintenance(Integer mhid,Model model) {	
		dao.deleteMaintenanceHistory(dao.findById(mhid));
		return "results";
	}
	
	@RequestMapping(path = "searchAll.do", method = RequestMethod.GET)
	public String searchAll(String keyword,Model model) {
		model.addAttribute("historys", dao.searchAll(keyword));
		
		return "results";
	}
	
	
	
	
	
	
	
}
