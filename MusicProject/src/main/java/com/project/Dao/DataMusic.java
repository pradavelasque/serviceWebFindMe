package com.project.Dao;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;

public class DataMusic {

	private ApplicationContext ctx;
	private MongoOperations mongoOperation;

	public DataMusic() {

		ctx = new AnnotationConfigApplicationContext(SpringMongoConfig.class);
		mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");

	}
	
	public List<MusicDb> getListMusic(){
		
		return mongoOperation.findAll(MusicDb.class);
	} 
	
	public void createMusic(String name,String genre,int temps){
		
	}
	
	public void insertAllDataOfMusiconDB(){
		
		
	}

}
