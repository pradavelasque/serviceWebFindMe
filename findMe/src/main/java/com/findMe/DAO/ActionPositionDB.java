package com.findMe.DAO;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;

import com.mongodb.DBCollection;


public class ActionPositionDB {

    public static DBCollection countersCollection;
	
	ApplicationContext ctx =  new AnnotationConfigApplicationContext(SpringMongoConfig.class);
	MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
	
	/**
	 * Add a person with his position
	 */
	public void addPosition(String name, double latitude, double longitude, Date time){
		
	}
	
	/**
	 * Update position of a person
	 */
	public void updatePosition(String name, double latitude, double longitude, Date date){
		
	}
	public void getPosition(){
		
	}
	public void stopTrackMe(){
			
	}
	
	public void startTrackMe(){
		
	}
}
