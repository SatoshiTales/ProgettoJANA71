package com.generation.RiservaBellaJANA71.RiservaBella.dao;

public class Query {
	//ANIMALI
		public static final String ALL_ANIMALI = "select * from ANIMALI";
		public static final String INSERT_ANIMALE = "insert into ANIMALI (NOME, SESSO, CLASSE, IMG, DESCR) values (?, ?, ?, ?, ?)";
		public static final String DELETE_ANIMALE = "delete from ANIMALI where ID = ?";
		public static final String UPDATE_ANIMALE = "update ANIMALI set NOME = ?,  SESSO = ?, CLASSE = ?, DESCR = ? where ID = ?";
		public static final String ANIMALE_CLASSE = "select * from ANIMALI where CLASSE = ?";
		public static final String ANIMALE_ID = "select * from ANIMALI where ID = ?";
		public static final String ANIMALE_IMG = "update ANIMALI set IMG = ? where ID = ?";
		public static final String ADOZIONI_ANIMALI = "select * from ADOZIONI_ANIMALI where ID_USER = ?";
		//PIANTE
		public static final String ALL_PIANTE = "select * from PIANTE";
		public static final String INSERT_PIANTA = "insert into PIANTE (NOME, FAMIGLIA, IMG, DESCR) values (?, ?, ?, ?)";
		public static final String DELETE_PIANTA = "delete from PIANTE where ID = ?";
		public static final String UPDATE_PIANTA = "update PIANTE set NOME = ?, FAMIGLIA = ?, DESCR = ? where ID = ?";
		public static final String PIANTA_FAMIGLIA = "select * from PIANTE where FAMIGLIA = ?";
		public static final String PIANTA_ID = "select * from PIANTE where ID = ?";
		public static final String PIANTA_IMG = "update PIANTE set IMG = ? where ID = ?";
}
