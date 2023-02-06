package dao;

public class Query {
	
	//ANIMALI
	public static final String ALL_ANIMALI = "select * from ANIMALI";
	public static final String INSERT_ANIMALE = "insert into ANIMALI (NOME, SESSO, CLASSE_ANIMALE, IMG) values (?, ?, ?, ?";
	public static final String DELETE_ANIMALE = "delete from ANIMALI where ID = ?";
	public static final String UPDATE_ANIMALE = "update ANIMALI set NOME = ?, set SESSO = ?, set = CLASSE_ANIMALE = ?, set IMG = ? where ID = ?";
	public static final String ANIMALE_CLASSE = "select * from ANIMALI where CLASSE_ANIMALE = ?";
}
