package com.findMe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	@RequestMapping("/test")
	public String hello(@RequestParam(value="name",required=false,defaultValue="wolrd")String name, Model model){
		model.addAttribute("name",name);
		return "/";
	}
	
}
