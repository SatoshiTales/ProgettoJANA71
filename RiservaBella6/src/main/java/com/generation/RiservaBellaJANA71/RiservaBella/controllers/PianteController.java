package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.PianteDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;

@Controller
public class PianteController {
	
	@Autowired
	private PianteDao dlP;

	@Autowired
	private ApplicationContext context;
	
	//Model is a container inside which i can insert data sent from the jsp
	@GetMapping("/elencopiante")
	public String elencoPiante(Model model) {

		//dl.leggiTutti gets inserted inside the model with the elencoAnimali label
		model.addAttribute("elencopiante", dlP.leggiTutti());
		//model gets sent to the jsp page
		return "elencopiante.jsp";
	}
	
	//Model is a container inside which i can insert data sent from the jsp
		@GetMapping("/elencopianteuser")
		public String elencoAnimaliUser(Model model) {
			
			//dl.leggiTutti gets inserted inside the model with the elencoAnimali label
			model.addAttribute("elencopiante", dlP.leggiTutti());
			//model gets sent to the jsp page
			return "elencopianteuser.jsp";
		}

	@GetMapping("/eliminapianta")
	public String elimina(@RequestParam("id") int idPn) {
		if(dlP.delete(idPn)) {
			return "redirect:elencopiante";
		}else {
			return "errore nell'eliminazione";
		}
	}

	@GetMapping("/dettaglipianta")
	public String dettagli(@RequestParam("id") int idPn, Model model) {

		//Searching the correct object
		Pianta p =dlP.cercaPerId(idPn);

		//If for whatever reason l is null then I send the user to the list page
		if(p == null) {
			return "redirect:elencopiante";
		}else {
			model.addAttribute("pianta", p);
			return "dettaglipianta.jsp";
		}
	}
	
	@GetMapping("/dettaglipiantauser")
	public String dettagliUser(@RequestParam("id") int idP, Model model) {

		//Searching the correct object
		Pianta p =dlP.cercaPerId(idP);

		//If for whatever reason l is null then I send the user to the list page
		if(p == null) {
			return "redirect:elencoanimaliuser";
		}else {
			model.addAttribute("pianta", p);
			return "dettaglipiantauser.jsp";
		}
	}

	//Update button mapping
	@GetMapping("/dettaglimodificapianta")
	public String dettagliModifica(@RequestParam("id") int idP, Model model) {

		Pianta p = dlP.cercaPerId(idP);

		if(p == null) {
			return "redirect:elencopiante";
		}else {
			model.addAttribute("pianta", p);
			return "dettaglipiantamodifica.jsp";
		}
	}

	//Actual update mapping
	//Receiving inputs from the form as a map and then send it to the dao
	@GetMapping("/modificapianta")
	public String aggiorna(@RequestParam Map<String, String> inputs) {
		
		Pianta p = context.getBean(Pianta.class, inputs);
		if(dlP.update(p)) {
			System.out.println("AGGIORNAMENTO RIUSCITO");
			return "redirect:dettaglipianta?id=" + p.getId();
		}
		else {
			return "Errore nell'update";
		}
	}
	
	@GetMapping("/formnuovapianta")
	public String formNuovaPianta() {
		return "formnuovaPianta.html";
	}
	
	@GetMapping("/nuovaPianta")
	public String nuovo(@RequestParam Map<String, String> parametriInput) {
		Pianta p  = context.getBean(Pianta.class, parametriInput);
		if(dlP.create(p)) {
			return"redirect:elencopiante";
		}
		else {
			return "Errore nel salvataggio";
		}
	}
	
	@GetMapping("/adottapianta")
	public String adottaPianta(@RequestParam int idP, HttpSession session, Model model) {
		if("OK".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "OK");
		} else if("KO".equals(session.getAttribute("login"))) {
			model.addAttribute("login", "KO");
		}
		User usr = (User) session.getAttribute("user");
		dlP.adotta(usr.getId(), idP);
		return "redirect:/openprofilo";
	}

}
