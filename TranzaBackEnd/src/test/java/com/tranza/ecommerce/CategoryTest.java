package com.tranza.ecommerce;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.tranza.ecommerce.dao.CategoryDAO;
import com.tranza.ecommerce.model.Category;

public class CategoryTest {

	private static AnnotationConfigApplicationContext context;

	@Autowired
	private static CategoryDAO categoryDAO;

	@Autowired
	private static Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.tranza");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		//category = (Category) context.getBean("category");
	}

	@Test
	public void saveCategoryTestCase() {
		Category category = new Category();
		category.setCatName("Car");
		category.setCatDescription("This is Car category");
		category.setActive(true);
		category.setCatImage("noImage.jpg");
		Boolean status = categoryDAO.addCategory(category);
		assertEquals("Save category", true, status);
	}
	
	/*@Test
	public void CategoryActiveListTestCase() {
		int status = categoryDAO.getAllCategory().size();
		assertEquals("list of  category",3, status);
	}
*/
}
