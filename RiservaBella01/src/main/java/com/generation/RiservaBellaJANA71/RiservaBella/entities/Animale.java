package com.generation.RiservaBellaJANA71.RiservaBella.entities;

import com.generation.utility.entities.Entity;

public class Animale extends Entity{
	private String nome;
	private String sesso;
	private String classe;
	private String img;
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSesso() {
		return sesso;
	}
	public void setSesso(String sesso) {
		this.sesso = sesso;
	}
	public String getClasse() {
		return classe;
	}
	public void setClasse(String classe) {
		this.classe = classe;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
	
}