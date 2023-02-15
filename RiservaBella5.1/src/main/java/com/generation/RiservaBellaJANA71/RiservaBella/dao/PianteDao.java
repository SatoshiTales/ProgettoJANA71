package com.generation.RiservaBellaJANA71.RiservaBella.dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta;



public class PianteDao {
	@Autowired
	private Database db;
	
	@Autowired
	private ApplicationContext context;
	
	
	public List<Pianta> read(String query, String...params){
		List<Pianta> ris = new ArrayList<Pianta>();
		
		List<Map<String, String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe) {
			Pianta a = context.getBean(Pianta.class, riga);
			ris.add(a);
		}
		return ris;
	}
	
	public List<Pianta> leggiTutti(){
		return read(Query.ALL_PIANTE);
	}
	public List<Pianta> leggiAdozioni(String id){
		return read(Query.ADOZIONI_PIANTE, id+ "");
	}
	
	public boolean create(Pianta p) {
		return db.update(Query.INSERT_PIANTA, p.getNome(), p.getFamiglia(), p.getDescr());
	}
	
	public boolean delete(int id) {
		return db.update(Query.DELETE_PIANTA, id + "");
	}
	
	public boolean update(Pianta p) {
		return db.update(Query.UPDATE_PIANTA, p.getNome(), p.getFamiglia(), p.getDescr(), p.getId() + "");
	}
	
	public boolean updateImg(String filePath, Pianta p) {
		return db.update(Query.PIANTA_IMG, filePath, p.getId() + "");
	}
	public Pianta cercaPerClasse(String famiglia) {
		return (Pianta) read(Query.PIANTA_FAMIGLIA, famiglia);
	}
	
	public Pianta cercaPerId(int id) {
		return (Pianta) read(Query.PIANTA_ID, id + "").get(0);
	}
	
	public boolean adotta(int idUser, int idP) {
		return db.update("INSERT into ADOZIONIP (ID_USER, ID_PIANTA) values (?, ?)", idUser + "",  idP + "");
	}
	
}