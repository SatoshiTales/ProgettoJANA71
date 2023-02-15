package com.generation.RiservaBellaJANA71.RiservaBella;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AniDao;

@SpringBootTest
class RiservaBellaApplicationTests {

	@Autowired
	public AniDao aDao;
	
	@Autowired
	private ApplicationContext context;
	@Test
	void contextLoads() {
		System.out.println(aDao.leggiAdozioni("6"));
	}

}
