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

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AniDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.PianteDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.UserDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;

@Controller
@RequestMapping("/user")
public class UserController {

	
	@Autowired
	private PianteDao pDao;

	@Autowired
	private AniDao aDao;

	@Autowired
	private UserDao dUser;

	@Autowired
	private ApplicationContext context;

	@PostMapping("/gologin")
	public String login(@RequestParam Map<String, String> reqParam, HttpSession session, Model model) {

		User user = dUser.checkUser(reqParam.get("username"), reqParam.get("pass"));
		System.out.println(user);
		if (reqParam.get("username").equals(user.getUsername()) 
				&& reqParam.get("pass").equals(user.getPass())
				&& user.getIsadmin().equalsIgnoreCase("si")) {
			session.setAttribute("login", "OK");
			session.setAttribute("user", user);
			System.out.println("Login OK admin");
			return "redirect:/homeAdm.html";

		} else if (reqParam.get("username").equals(user.getUsername()) 
				&& reqParam.get("pass").equals(user.getPass())
				&& user.getIsadmin().equalsIgnoreCase("no")) {
			session.setAttribute("login", "OK");
			session.setAttribute("user", user);
			System.out.println("Login OK user");
			return "redirect:/openprofilo";
		}else {
			session.setAttribute("login", "error");
			System.out.println("Login KO");
			return "redirect:/login";

		}

	}

	@PostMapping("/gosignin")
	public String signin(@RequestParam Map<String, String> reqParam, HttpSession session) {

		User user = context.getBean(User.class, reqParam);
		if(dUser.create(user)) {
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
			User user = (User) session.getAttribute("user");
			session.setAttribute("dettuser", dUser.readOne(user.getId()));
		}

		return "redirect:/openprofilo";
	}
	
	@GetMapping("/listaadozioni")
	public String adozioni(HttpSession session, Model model) {
//		System.err.println("Sei arrivato alla riga 101");
		if("OK".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "OK");
		} else if("KO".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "KO");
		}
		User usr = (User) session.getAttribute("user");
		model.addAttribute("animali", aDao.leggiAdozioni(usr.getId()+ ""));
//		System.out.println(model);
		return "adozioni.jsp";
	}
	
	
}
