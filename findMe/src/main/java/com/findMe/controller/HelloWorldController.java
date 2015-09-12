package com.findMe.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.format.ISODateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.joda.time.format.DateTimeFormatter;
import com.findMe.DAO.PositionRepository;

@Controller
public class HelloWorldController {

	@Autowired
	public PositionRepository positionRepository;
	
	@RequestMapping(value="/test", method = RequestMethod.GET)
	public ModelAndView hello(HttpServletRequest request, HttpServletResponse response, ModelMap model){
		//model.addAttribute("name","qew");
		DateTimeFormatter parser=ISODateTimeFormat.dateHourMinuteSecond();      
		DateTime date=parser.parseDateTime("2014-07-29T07:23:06");
		positionRepository.save("Chubi","chubido", 1.1, 1.1, date, true);
		
		request.setAttribute("name", "sdsad");
		model.put("name","qew");
		ModelAndView  modelView = new ModelAndView();
		modelView.setViewName("test");
		modelView.addObject("name","qew");
		return modelView;
	}
	
}
