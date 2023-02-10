package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AdminDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.UserDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Admin;

@Controller
@RequestMapping("/users")
public class UserController {
	
	
	@Autowired
	private UserDao dUser;
	
	@Autowired
	private ApplicationContext context;
	
	@PostMapping("/gologin")
	public String login(@RequestParam Map<String, String> reqParam, HttpSession session) {
		
		Admin adm = dUser.checkUser(reqParam.get("username"), reqParam.get("pass"));
		System.out.println(adm);
		if (reqParam.get("username").equals(adm.getUsername()) && reqParam.get("pass").equals(adm.getPass())) {
			session.setAttribute("login", "OK");
			session.setAttribute("admin", adm);
			System.out.println("Login OK");
			return "redirect:/";
		} else {
			session.setAttribute("login", "error");
			System.out.println("Login KO");
			return "redirect:/login";
		}
		
	}
	
	@PostMapping("/gosignin")
	public String signin(@RequestParam Map<String, String> reqParam, HttpSession session) {
		
		Admin adm = context.getBean(Admin.class, reqParam);
		if(dAdm.create(adm)) {
			return "redirect:/login";
		} else {
			return "redirect:/signin";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("admin");
		session.setAttribute("login", "KO");
		
		return "redirect:/";
	}
	
	@GetMapping("/profilo")
	public String profilo(HttpSession session) {
		
		boolean logged = "OK".equalsIgnoreCase((String) session.getAttribute("login"));
		if(logged) {
			Admin adm = (Admin) session.getAttribute("admin");
			session.setAttribute("dettuser", dUser.readOne(adm.getId()));
		}
		
		return "redirect:/openprofilo";
	}
}
