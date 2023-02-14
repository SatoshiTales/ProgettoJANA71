package com.generation.RiservaBellaJANA71.RiservaBella.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;

public class UserDao {
	
	@Autowired
	private Database db;
	
	@Autowired
	private ApplicationContext context;
	
	public List<User> read(String query, String... params) {
		List<User> ris = new ArrayList<User>();
		List<Map<String, String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe)
		{
			User us = context.getBean(User.class,riga);
			ris.add(us);
		}
		return ris;
	}
	
	public User readOne(String query, String... params) {
		return context.getBean(User.class, db.row(query, params));
	}
	
	public List<User> readAll() {
		return read("select * from USERS");
	}
	
	public User readOne(int id) {
		return readOne("select * from USERS where ID = ?", id+"");
	}
	
	public boolean create(User us) {
		String query = "insert into USERS(USERNAME, PASS, NOME, COGNOME, DDN, EMAIL) values(?, ?, ?, ?, ?, ?)";
		return db.update(query, us.getUsername(), us.getPass(), us.getNome(), us.getCognome(), us.getDdn().toString(), us.getEmail());
	}
	
	public boolean update(User us) {
		String query = "update USERS set USERNAME = ?, PASS = ? where ID = ?";
		return db.update(query, us.getNome(), us.getCognome(), us.getDdn().toString(), us.getEmail(), us.getId()+"");
	}
	
	public boolean delete(int id) {
		String query = "delete from USERS where ID = ?";
		return db.update(query, id+"");
	}
	
	public User checkUser(String username, String pass) {
		return readOne("select * from USERS where USERNAME = ? and PASS = ?", username, pass);
	}
	

}
