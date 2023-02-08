package com.generation.RiservaBellaJANA71.RiservaBella.dao;

import java.util.ArrayList;
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
	
	public List<Admin> read(String query, String... params) {
		List<Admin> ris = new ArrayList<Admin>();
		List<Map<String, String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe)
		{
			Admin pers = context.getBean(Admin.class,riga);
			ris.add(pers);
		}
		return ris;
	}
	
	public Admin readOne(String query, String... params) {
		return context.getBean(Admin.class, db.row(query, params));
	}
	
	public List<Admin> readAll() {
		return read("select * from ADMIN");
	}
	
	public Admin readOne(int id) {
		return readOne("select * from ADMIN where ID = ?", id+"");
	}
	
	public boolean create(Admin adm) {
		String query = "insert into ADMIN(USERNAME, PASSWORD) values(?, ?)";
		return db.update(query, adm.getUsername(), adm.getPassword());
	}
	
	public boolean update(Admin adm) {
		String query = "update ADMIN set USERNAME = ?, PASS = ? where ID = ?";
		return db.update(query, adm.getUsername(), adm.getPassword()+"");
	}
	
	public boolean delete(int id) {
		String query = "delete from ADMIN where ID = ?";
		return db.update(query, id+"");
	}

}
