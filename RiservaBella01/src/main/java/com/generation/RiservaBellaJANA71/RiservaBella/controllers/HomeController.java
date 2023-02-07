package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AniDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.PianteDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale;

@Controller
public class HomeController{
	
	@Autowired
	private AniDao dlA;

	@Autowired
	private ApplicationContext context;

	@GetMapping("/")
	public String home(){
		return "home.html";
	}
	
	
	







//	
//
}