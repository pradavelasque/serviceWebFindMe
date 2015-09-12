package com.findMe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.findMe.DAO.Position;
import com.findMe.modele.Personne;

@Controller
public class ControlleurPosition {
	
	private  static String ACCEUILLE_PAGE = "/";
	
	@RequestMapping(value = "initialiserPosition", method = RequestMethod.GET)
	public @ResponseBody Position initialiserPosition(){
	
		Position position = null;
		
		return position;
	}
	
	@RequestMapping(value = "sendPosition", method = RequestMethod.GET )
	public String sendPosition(){
		
		return ACCEUILLE_PAGE;
	}
	
	@RequestMapping(value = "synchroniserPosition", method = RequestMethod.GET)
	public String synchroniserPosition(){
		
		return ACCEUILLE_PAGE;
	}
	
	@RequestMapping(value = "demandePosition", method = RequestMethod.GET)
	public String demandePosition(){
		
		return ACCEUILLE_PAGE;
	}
	
	@RequestMapping(value = "arreterSynchronisation", method = RequestMethod.GET)
	public String arreterSynchronisation(){
		
		return ACCEUILLE_PAGE;
	}

}
