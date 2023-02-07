package com.generation.RiservaBellaJANA71.RiservaBella.dao;

public class Query {
	//ANIMALI
		public static final String ALL_ANIMALI = "select * from ANIMALI";
		public static final String INSERT_ANIMALE = "insert into ANIMALI (NOME, SESSO, CLASSE, IMG) values (?, ?, ?, ?";
		public static final String DELETE_ANIMALE = "delete from ANIMALI where ID = ?";
		public static final String UPDATE_ANIMALE = "update ANIMALI set NOME = ?, set SESSO = ?, set = CLASSE = ?, set IMG = ? where ID = ?";
		public static final String ANIMALE_CLASSE = "select * from ANIMALI where CLASSE = ?";
		public static final String ANIMALE_ID = "select * from ANIMALI where ID = ?";
		
		//PIANTE
		public static final String ALL_PIANTE = "select * from PIANTE";
		public static final String INSERT_PIANTA = "insert into PIANTE (NOME, FAMIGLIA, IMG) values (?, ?, ?";
		public static final String DELETE_PIANTA = "delete from PIANTE where ID = ?";
		public static final String UPDATE_PIANTA = "update PIANTE set NOME = ?, set FAMIGLIA = ?, set IMG = ? where ID = ?";
		public static final String PIANTA_FAMIGLIA = "select * from PIANTE where FAMIGLIA = ?";
		public static final String PIANTA_ID = "select * from PIANTE where ID = ?";
}
