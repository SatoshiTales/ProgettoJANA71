package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AniDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale;

@Controller
public class AnimaliController {
	@Autowired
	private AniDao dlA;

	@Autowired
	private ApplicationContext context;
	
	
	//Model is a container inside which i can insert data sent from the jsp
	@GetMapping("/elencoanimali")
	public String elencoAnimali(Model model) {

		//dl.leggiTutti gets inserted inside the model with the elencoAnimali label
		model.addAttribute("elencoanimali", dlA.leggiTutti());
		//model gets sent to the jsp page
		return "elencoanimali.jsp";
	}
	
	@GetMapping("/eliminaanimale")
	public String elimina(@RequestParam("id") int idAn) {
		if(dlA.delete(idAn)) {
			return "redirect:elencoanimali";
		}else {
			return "errore nell'eliminazione";
		}
	}
	
		@GetMapping("/dettaglianimale")
	public String dettagli(@RequestParam("id") int idAn, Model model) {

		//Searching the correct object
		Animale a =dlA.cercaPerId(idAn);

		//If for whatever reason l is null then I send the user to the list page
		if(a == null) {
			return "redirect:elencoanimali";
		}else {
			model.addAttribute("animale", a);
			return "dettaglianimale.jsp";
		}
	}
		
		//Update button mapping
		@GetMapping("/dettaglimodificaanimale")
		public String dettagliModifica(@RequestParam("id") int idAn, Model model) {
	
			Animale a = dlA.cercaPerId(idAn);
	
			if(a == null) {
				return "redirect:elencoanimali";
			}else {
				model.addAttribute("animale", a);
				return "dettaglianimalemodifica.jsp";
			}
		}
		
		@GetMapping("/modificaanimale")
		public String aggiorna(@RequestParam Map<String, String> inputs) {
			
			Animale a = context.getBean(Animale.class, inputs);
			if(dlA.update(a)) {
				System.out.println("AGGIORNAMENTO RIUSCITO");
				return "redirect:elencoanimali";
			}
			else {
				return "Errore nell'update";
			}
		}
		
		
		@GetMapping("/formnuovoanimale")
		public String formNuovoAnimale() {
			return "formnuovoanimale.html";
		}
		
		@GetMapping("/nuovoanimale")
		public String nuovo(@RequestParam Map<String, String> parametriInput) {
			Animale l = context.getBean(Animale.class, parametriInput);
			if(dlA.create(l)) {
				return"redirect:elencolibri";
			}
			else {
				return "Errore nel salvataggio";
			}
		}

}
