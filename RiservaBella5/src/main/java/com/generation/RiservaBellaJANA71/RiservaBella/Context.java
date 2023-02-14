package com.generation.RiservaBellaJANA71.RiservaBella;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AniDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.Database;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.PianteDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.UserDao;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Animale;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.Pianta;
import com.generation.RiservaBellaJANA71.RiservaBella.entities.User;




@Configuration
public class Context {
	
	@Bean
	public Database db()
	{
		return new Database("RISERVA_BELLA");
	}
	
	@Bean
	@Scope("prototype")
	public Animale aniMappa(Map<String, String> riga){
		Animale a = new Animale();
		a.fromMap(riga);
		return a;
	}
	
	@Bean
	@Scope("prototype")
	public Pianta pianteMappa(Map<String, String> riga){
		Pianta p = new Pianta();
		p.fromMap(riga);
		return p;
	}
	
	@Bean
	public AniDao aDao() {
		return new AniDao();
	}
	
	@Bean
	public PianteDao pDao() {
		return new PianteDao();
	}
	
	@Bean
	@Scope("prototype")
	public User userFromMap(Map<String, String> riga) {
		return (User) new User().fromMap(riga);
	}
	
	
	@Bean
	public UserDao daoUser() {
		return new UserDao();
	}
	

}