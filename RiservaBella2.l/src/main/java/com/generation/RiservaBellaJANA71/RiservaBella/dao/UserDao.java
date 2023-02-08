package com.generation.RiservaBellaJANA71.RiservaBella.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;
import com.generation.utility.dao.Database;

public class UserDao {
	

	@Autowired
	private Database db;
	
	@Autowired
	private ApplicationContext context;
	
	private Map<String, User> read(String query, String... params) {
		Map<String, User> ris = new HashMap<String, User>();
		List<Map<String, String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe)
		{
			User u = context.getBean(User.class,riga);
			ris.put(u.getUsername(), u);
		}
		return ris;
	}
	
	public User readOne(String query, String... params) {
		System.out.println(db.row(query, params));
		return context.getBean(User.class, db.row(query, params));
	}
	
	public Map<String, User> readAll() {
		return read("select * from USERS");
	}
	
	public User readOne(int id) {
		return readOne("select * from USERS where ID = ?", id+"");
	}
	
	public User checkUser(String username, String password) {
		return readOne("select * from USERS where USERNAME = ? and PASS = ?", username, password);
	}
	
	public boolean create(User u) {
		String query = "insert into USERS(USERNAME, PASS) values(?, ?)";
		return db.update(query, u.getUsername(), u.getPassword());
	}
	
	public boolean update(User u) {
		String query = "update USERS set USERNAME = ?, PASS = ? where ID = ?";
		return db.update(query, u.getUsername(), u.getPassword(), u.getId()+"");
	}
	
	public boolean delete(int id) {
		String query = "delete from USERS where ID = ?";
		return db.update(query, id+"");
	}
	
	

}
