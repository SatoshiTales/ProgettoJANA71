package com.generation.RiservaBellaJANA71.RiservaBella.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.RiservaBellaJANA71.RiservaBella.entities.Admin;
import com.generation.utility.dao.Database;

public class AdminDao {
	
	@Autowired
	private Database db;
	
	@Autowired
	private ApplicationContext context;
	
	private Map<String, Admin> read(String query, String... params) {
		Map<String, Admin> ris = new HashMap<String, Admin>();
		List<Map<String, String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe)
		{
			Admin adm = context.getBean(Admin.class,riga);
			ris.put(adm.getUsername(), adm);
		}
		return ris;
	}
	
	public Admin readOne(String query, String... params) {
		System.out.println(db.row(query, params));
		return context.getBean(Admin.class, db.row(query, params));
	}
	
	public Map<String, Admin> readAll() {
		return read("select * from ADMINS");
	}
	
	public Admin readOne(int id) {
		return readOne("select * from ADMINS where ID = ?", id+"");
	}
	
	public Admin checkUser(String username, String pass) {
		return readOne("select * from ADMINS where USERNAME = ? and PASS = ?", username, pass);
	}
	
	public boolean create(Admin adm) {
		String query = "insert into ADMINS(USERNAME, PASS) values(?, ?)";
		return db.update(query, adm.getUsername(), adm.getPass());
	}
	
	public boolean update(Admin adm) {
		String query = "update ADMINS set USERNAME = ?, PASS = ? where ID = ?";
		return db.update(query, adm.getUsername(), adm.getPass(), adm.getId()+"");
	}
	
	public boolean delete(int id) {
		String query = "delete from ADMINS where ID = ?";
		return db.update(query, id+"");
	}
	
	
	

}
