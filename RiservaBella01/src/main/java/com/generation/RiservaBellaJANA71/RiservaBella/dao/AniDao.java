package com.generation.RiservaBellaJANA71.RiservaBella.dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale;
import com.generation.utility.dao.Database;



public class AniDao {
	@Autowired
	private Database db;
	
	@Autowired
	private ApplicationContext context;
	
	
	public List<Animale> read(String query, String...params){
		List<Animale> ris = new ArrayList<Animale>();
		
		List<Map<String, String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe) {
			Animale a = context.getBean(Animale.class, riga);
			ris.add(a);
		}
		return ris;
	}
	
	public List<Animale> leggiTutti(){
		return read(Query.ALL_ANIMALI);
	}
	
	public boolean create(Animale a) {
		return db.update(Query.INSERT_ANIMALE, a.getNome(), a.getSesso(), a.getClasse(), a.getImg());
	}
	
	public boolean delete(int id) {
		return db.update(Query.DELETE_ANIMALE, id + "");
	}
	
	public boolean update(Animale a) {
		return db.update(Query.UPDATE_ANIMALE, a.getNome(), a.getSesso(), a.getClasse(), a.getImg(), a.getId() + "");
	}
	
	public Animale cercaPerClasse(String classe) {
		return (Animale) read(Query.ANIMALE_CLASSE, classe);
	}
	
	public Animale cercaPerId(int idAn) {
		return (Animale) read(Query.ANIMALE_ID, idAn + "").get(0);
	}
}