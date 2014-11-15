package com.project.outils.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.project.outils.ReadDirectoryFiles;

public class ReadDirectoryFilesTest {

	
	
	@Test
	public void testReadDirectorie() {
		
		List<String> listName = (List<String>) ReadDirectoryFiles.readDirectorie("C:/Users/Public/Music/Sample Music");
		
		assertNotNull(listName);
		
	}

}
