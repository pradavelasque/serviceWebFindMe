package com.project.music;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.Dao.MusicDb;
import com.project.Dao.SpringMongoConfig;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		ApplicationContext ctx = 
	            new AnnotationConfigApplicationContext(SpringMongoConfig.class);
		MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");

		//MusicDb user = new MusicDb("mkyong", "password123", null);

		// save
		//mongoOperation.save(user);

		// now user object got the created id.
		//System.out.println("1. user : " + user);

		// query to search user
		Query searchUserQuery = new Query(Criteria.where("name").is("diego"));
		MusicDb musicDb = mongoOperation.findOne(searchUserQuery, MusicDb.class);
		
		List<MusicDb> listMusic = mongoOperation.findAll(MusicDb.class);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		String nameMusic = musicDb.name;
		model.addAttribute("musicName", nameMusic);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("listMusic", listMusic);
		
		return "identification";
	}
	
	@RequestMapping( value = "/t",method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = "123";//dateFormat.format(date);
		
		model.addAttribute("serverTime2", formattedDate );
		
		return "home1";
	}
	
	//Spring Security see this :
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
	 
			ModelAndView model = new ModelAndView();
			if (error != null) {
				model.addObject("error", "Invalid username and password!");
			}
	 
			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
			}
			model.setViewName("login");
	 
			return model;
	 
		}
	
}
