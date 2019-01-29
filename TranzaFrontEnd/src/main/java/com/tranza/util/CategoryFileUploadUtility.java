package com.tranza.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class CategoryFileUploadUtility {
	
	
private static final Logger logger = LoggerFactory.getLogger(CategoryFileUploadUtility.class);
	
	private static final String ABS_PATH = "F:\\Ecommerce\\Tranza-Ecommerce\\TranzaFrontEnd\\src\\main\\webapp\\resources\\images\\categoryImages\\";
	private static String REAL_PATH = "";
	public static void uploadFile(HttpServletRequest request, MultipartFile file, String categoryCode) {
		
		//Get the real path
		REAL_PATH = request.getSession().getServletContext().getRealPath("/resources/images/categoryImages/");
		logger.info(REAL_PATH);
		
		//Check to make sure that all the directories exist
		//If not please create them for me
		
		if(!new File(ABS_PATH).exists()) {
			
			//Create the directory for me
			new File(ABS_PATH).mkdirs();
		}
		
		if(!new File(REAL_PATH).exists()) {
			//Create the directory for me
			new File(REAL_PATH).mkdirs();
		}
		try {
			//For server upload
			file.transferTo(new File(REAL_PATH + categoryCode + ".jpg"));
			
			//for my project directory upload
			file.transferTo(new File(ABS_PATH + categoryCode + ".jpg"));
		} catch (IOException e) {
			// TODO: handle exception
		}
		
	}

}
