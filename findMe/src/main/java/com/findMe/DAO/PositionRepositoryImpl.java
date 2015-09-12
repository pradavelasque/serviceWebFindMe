package com.findMe.DAO;

import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoOperations;

public class PositionRepositoryImpl implements PositionRepository {

	ApplicationContext applicationContext = new AnnotationConfigApplicationContext(SpringMongoConfig.class);
	MongoOperations mongoOperation = (MongoOperations) applicationContext.getBean("mongoTemplate");
	
	public PositionRepositoryImpl(){
		super();
	}
	
	@Override
	public <S extends Position> List<S> save(Iterable<S> entites) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public List<Position> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Position> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<Position> findAll(Pageable arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void delete(String arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Position arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Iterable<? extends Position> arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean exists(String arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Iterable<Position> findAll(Iterable<String> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Position findOne(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Position> S save(S arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Position findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Position> findByNameNot(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(String name, String prenom,double latitude, double longitude, DateTime date, boolean tracer) {
		// TODO Auto-generated method stub
		Position position = new Position(name, prenom, latitude, longitude, date, tracer);
		mongoOperation.insert(position);
	}

	@Override
	public void findByPrenom(String name) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Position> findByLatitudeNear(double latitude, double longitude) {
		// TODO Auto-generated method stub
		return null;
	}

}
