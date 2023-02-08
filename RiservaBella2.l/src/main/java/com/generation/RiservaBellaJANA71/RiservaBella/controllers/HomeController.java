package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

import com.generation.RiservaBellaJANA71.RiservaBella.entities.Admin;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;

@Controller
public class HomeController{

	@GetMapping("/")
	public String home(){
		return "home.html";
	}
	
	@GetMapping("/login") 
	public String login(Model model, HttpSession session) {
		
		if("OK".equals(session.getAttribute("login"))) {
			model.addAttribute("errorLogin", "KO");
		} else if("error".equals(session.getAttribute("login"))) {
			model.addAttribute("errorLogin", "OK");
		}
		
		return "login.jsp";
	}
	
	@GetMapping("/homeLOG") 
	public String home(Model model, HttpSession session) {
		if("OK".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "OK");
			User u = (User) session.getAttribute("user");
			if(u != null) model.addAttribute("user", u.toMap());
			
		} else if("KO".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "KO");
		}
		return "homeLOG.jsp";
	}
	
	@GetMapping("/signin")
	public String signin() {
		return "signin.jsp";
	}
	
	
	@GetMapping("/openprofilo") 
	public String openProfilo(Model model, HttpSession session) {
		if("OK".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "OK");
		} else if("KO".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "KO");
		}
		User u = (User) session.getAttribute("user");
		if(u != null) model.addAttribute("user", u.toMap());
		Admin adm = (Admin) session.getAttribute("dettuser");
		if(u != null) model.addAttribute("dettuser", adm.toMap());
		return "profilo.jsp";
	}
	
	
	







//	
//
}