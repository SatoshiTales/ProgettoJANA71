package com.riserva.RiservaBella00;

import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import com.generation.utility.dao.Database;

import dao.AniDao;
import entities.Animale;


@Configuration
public class Context {
	
	@Bean
	public Database db()
	{
		return new Database("RiservaBella", "root", "root");
	}
	
	@Bean
	@Scope("prototype")
	public Animale aniMappa(Map<String, String> riga){
		Animale a = new Animale();
		a.fromMap(riga);
		return a;
	}
	
	@Bean
	public AniDao aDao() {
		return new AniDao;
	}
	
}
