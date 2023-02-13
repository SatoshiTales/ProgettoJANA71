package com.generation.RiservaBellaJANA71.RiservaBella.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Database
{
	private String percorso;
	private static final String user = "root";
	private static final String pass = "root"; 

	private Connection cn = null;

	public Database(String nomeDB) {
		this.percorso = "jdbc:mysql://localhost:3306/" + nomeDB + "?useSSL=false&serverTimezone=UTC";
		apriConnection(nomeDB);
	}

	public Connection getConnection() {
		return cn;
	}

	private void apriConnection(String nomeDB) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn = DriverManager.getConnection(percorso, user, pass);
		} catch(ClassNotFoundException cnfE) {
			System.err.println("Classe Driver non trovata");
			cnfE.printStackTrace();
		} catch (SQLException sqlE) {
			System.err.println("Errore nella connessione al DATABASE/" + nomeDB);
			sqlE.printStackTrace();
		}
	}

	public void chiudiConnection() {
		try {
			if(cn != null)
				cn.close();
		} catch (SQLException e) {
			System.err.println("Errore nella chiusura della connessione");
			e.printStackTrace();
		}
	}

	public void chiudiItem(PreparedStatement ps, ResultSet rs) {
		try {
			if(ps != null)
				ps.close();
			if(rs != null)
				rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Map<String, String>> rows(String query, String... params) {
		List<Map<String, String>> ris = new ArrayList<Map<String, String>>();
		
		try {
			PreparedStatement p = cn.prepareStatement(query);
			
			for(int i = 0; i < params.length; i++)
				p.setString(i + 1, params[i]);
			
			ResultSet rs = p.executeQuery();
			
			while(rs.next()) {
				Map<String, String> riga = new LinkedHashMap<String, String>();
				
				for(int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
					riga.put(	rs.getMetaData().getColumnLabel(i).toLowerCase(),
								rs.getString(i));
					
				}//Fine di for
				
				ris.add(riga);
				
				
			}//Fine di while
		}
		catch(Exception e) {
			System.out.println("Catch del metodo rows della classe Database in Utility");
			e.printStackTrace();
		}
		
		return ris;
	}//Fine di rows
	
	public Map<String, String> row(String query, String... params) {
		try {
			return	rows(query, params).get(0);
		} catch(Exception e) {
			return null;
		}
	}//Fine di row()
	
	public boolean update(String query, String... params) {
		try {
			PreparedStatement p = cn.prepareStatement(query);
			
			for(int i = 0; i < params.length; i++) {
				p.setString(i + 1, params[i]);
			}
			
			p.executeUpdate();
			return true;
		}
		catch(Exception e) {
			System.out.println("Catch del metodo update di Database in Utility");
			e.printStackTrace();
			return false;
		}
	}//Fine di update
	
}