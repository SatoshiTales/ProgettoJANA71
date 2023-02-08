package com.generation.RiservaBellaJANA71.RiservaBella.controllers;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AdminDao;

@Controller
@RequestMapping("/admin")
public class AdminController {


	@Autowired
	private AdminDao dAd;

	@Autowired
	private ApplicationContext context;

	@GetMapping("/elencopers")
	public String elencoPers(Model model, HttpSession session) {
		if("OK".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "OK");
		} else if("KO".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "KO");
		}
		model.addAttribute("elencopers",dAd.readAll());
		return "/persone/elencopersone.jsp";
	}
}
