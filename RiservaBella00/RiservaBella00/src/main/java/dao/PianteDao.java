package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.utility.dao.Database;

import entities.Pianta;

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
		return read(Query.ALL_ANIMALI);
	}
	
	public boolean create(Pianta p) {
		return db.update(Query.INSERT_PIANTA, p.getNome(), p.getFamiglia(), p.getImg());
	}
	
	public boolean delete(int id) {
		return db.update(Query.DELETE_PIANTA, id + "");
	}
	
	public boolean update(Pianta p) {
		return db.update(Query.UPDATE_PIANTA, p.getNome(), p.getFamiglia(), p.getImg(), p.getId() + "");
	}
	
	public Pianta cercaPerClasse(String famiglia) {
		return (Pianta) read(Query.PIANTA_FAMIGLIA, famiglia);
	}
}
