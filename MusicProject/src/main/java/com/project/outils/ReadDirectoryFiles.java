package com.project.outils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ReadDirectoryFiles {

	private final static String EXTENSION = ".mp3";
	
	private static List<String> listName = new ArrayList<String>();
	
	
	/**
	 * 
	 * @param directName
	 * @return
	 */
	public static List<String> readDirectorie(String directName){
		
		final File folder = new File(directName);
		listFilesForFolder(folder);
		
		return listName;
		
	}
	
	
	public static void listFilesForFolder(final File folder) {
	    for (final File fileEntry : folder.listFiles()) {
	        if (fileEntry.isDirectory()) {
	            listFilesForFolder(fileEntry);
	        } else {
	        	
	        	if (fileEntry.getName().toLowerCase().contains(EXTENSION)) {
				
	        		listName.add(fileEntry.getName());
	        		
				}
	         
	        }
	    }
	}
	
}
