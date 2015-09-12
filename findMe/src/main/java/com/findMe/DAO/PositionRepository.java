package com.findMe.DAO;

import java.util.List;

import org.joda.time.DateTime;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface PositionRepository extends MongoRepository<Position, String>{

	public Position findByName(String name);
	public List<Position> findByNameNot(String name);
	public void save(String name, String prenom, double latitude, double longitude, DateTime date,boolean tracer);
	public void findByPrenom(String name);
	List<Position> findByLatitudeNear(double latitude, double longitude);
}
