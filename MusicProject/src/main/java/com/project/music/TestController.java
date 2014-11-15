package com.project.music;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/test")
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	
	@RequestMapping( value = "/",method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = "123";//dateFormat.format(date);
		
		model.addAttribute("serverTime1", formattedDate );
		
		return "test";
	}
}
