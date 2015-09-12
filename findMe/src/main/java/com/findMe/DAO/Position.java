package com.findMe.DAO;

import org.joda.time.DateTime;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "position")
public class Position {

	@Id
	private String id;
	
	private String name;
	private String prenom;
	private double latitude;
	private double longitude;
	private DateTime date;
	private boolean tracer;
	
	public Position(String id, String name, String prenom, double latitude,
			double longitude, DateTime date, boolean tracer) {
		super();
		this.id = id;
		this.name = name;
		this.prenom = prenom;
		this.latitude = latitude;
		this.longitude = longitude;
		this.date =  date;
	}
	public Position( String name, String prenom, double latitude,
			double longitude, DateTime date, boolean tracer) {
		super();
		
		this.name = name;
		this.prenom = prenom;
		this.latitude = latitude;
		this.longitude = longitude;
		this.tracer = tracer;
		this.date = date;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public DateTime getDate() {
		return date;
	}
	public void setDate(DateTime date) {
		this.date = date;
	}
	public boolean isTracer() {
		return tracer;
	}
	public void setTracer(boolean tracer) {
		this.tracer = tracer;
	}
}
