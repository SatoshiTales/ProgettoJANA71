package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import java.util.Map;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AdminDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.UserDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;

@Controller
@RequestMapping("/user")
public class UserController {
	

	@Autowired
	private UserDao dUsers;
	
	@Autowired
	private AdminDao dPers;
	
	@Autowired
	private ApplicationContext context;
	
	@PostMapping("/gologin")
	public String login(@RequestParam Map<String, String> reqParam, HttpSession session) {
		
		User u = dUsers.checkUser(reqParam.get("usr"), reqParam.get("psw"));
		System.out.println(u);
		if (reqParam.get("usr").equals(u.getUsername()) && reqParam.get("psw").equals(u.getPassword())) {
			session.setAttribute("login", "OK");
			session.setAttribute("user", u);
			System.out.println("Login OK");
			return "redirect:/homeLOG";
		} else {
			session.setAttribute("login", "error");
			System.out.println("Login KO");
			return "redirect:/login";
		}
		
	}
	
	@PostMapping("/gosignin")
	public String signin(@RequestParam Map<String, String> reqParam, HttpSession session) {
		
		User u = context.getBean(User.class, reqParam);
		if(dUsers.create(u)) {
			return "redirect:/login";
		} else {
			return "redirect:/signin";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.setAttribute("login", "KO");
		
		return "redirect:/";
	}
	
	@GetMapping("/profilo")
	public String profilo(HttpSession session) {
		
		boolean logged = "OK".equalsIgnoreCase((String) session.getAttribute("login"));
		if(logged) {
			User u = (User) session.getAttribute("user");
			session.setAttribute("dettuser", dPers.readOne(u.getId()));
		}
		
		return "redirect:/openprofilo";
	}

}
