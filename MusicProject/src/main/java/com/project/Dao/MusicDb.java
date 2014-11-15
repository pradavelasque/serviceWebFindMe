package com.project.Dao;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
 
@Document(collection = "music")
public class MusicDb {
 
	@Id
	private String id;
 
	private String username;
	private int time;
	private int use;
	private String path;
	private String password;
	public String name;
	private String genre;
	

	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @param id
	 * @param username
	 * @param password
	 */
	public MusicDb(String id, String username,String name ) {
		super();
		this.id = id;
		this.username = username;
		this.name =name;
		
	}

	public String get_id() {
		return id;
	}

	public void set_id(String _id) {
		this.id = _id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public int getUse() {
		return use;
	}

	public void setUse(int use) {
		this.use = use;
	}

	public String getPath() {
		return path;
	}

	public void set_path(String path) {
		this.path = path;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getPassword() {
		return time;
	}

	public void setPassword(int password) {
		this.time = password;
	}
	
	//getter, setter, toString, Constructors
 
}