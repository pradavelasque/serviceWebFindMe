package com.findMe.modele;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Personne {
	
	@Autowired
	private String name;
	@Autowired
	private String prenom;
	@Autowired
	private String coordonne;
	@Autowired
	private String date;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getCoordonne() {
		return coordonne;
	}
	public void setCoordonne(String coordonne) {
		this.coordonne = coordonne;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
