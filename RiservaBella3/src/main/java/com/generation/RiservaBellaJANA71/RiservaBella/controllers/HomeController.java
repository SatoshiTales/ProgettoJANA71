package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

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
		
		return "login.jsp"; //login.jsp
	}
	
//	@GetMapping("/home") 
//	public String home(Model model, HttpSession session) {
//		if("OK".equals(session.getAttribute("login"))) {
//			model.addAttribute("login", "OK");
//			User user = (User) session.getAttribute("user");
//			if(user != null) model.addAttribute("user", user.toMap());
//			
//		} else if("KO".equals(session.getAttribute("login"))) {
//			model.addAttribute("login", "KO");
//		}
//		return "home.jsp";
//	}
	
	@GetMapping("/signin")
	public String signin() {
		return  "signin.jsp";
	}
	
	
//	@GetMapping("/openprofilo") 
//	public String openProfilo(Model model, HttpSession session) {
//		if("OK".equals(session.getAttribute("login"))) {
//			model.addAttribute("login", "OK");
//		} else if("KO".equals(session.getAttribute("login"))) {
//			model.addAttribute("login", "KO");
//		}
//		User adm = (Admin) session.getAttribute("admin");
//		if(adm != null) model.addAttribute("admin", adm.toMap());
//		User u = (User) session.getAttribute("dettuser");
//		if(adm != null) model.addAttribute("dettuser", u.toMap());
//		return "profilo.jsp";
//	}







//	
//
}