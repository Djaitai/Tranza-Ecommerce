package com.tranza.ecommerce;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.model.Product;

public class ProductTest {

	private static AnnotationConfigApplicationContext context;

	@Autowired
	private static ProductDAO productDAO;

	@Autowired
	private static Product product;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.tranza");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
		product = (Product) context.getBean("product");
	}

	@Test
	public void saveProductTestCase() {

		//product.setProd_code("AWCD7RT55SD");
		product.setBrand("Nike");
		product.setPurchase(2);
		product.setViews(50);
		Boolean status = productDAO.addProduct(product);
		assertEquals("Save product", true, status);
	}
	
	/*@Test
	public void getAllProductTestCase() {
		int status = productDAO.getAllProduct().size();
		assertEquals("list of  category",4, status);
	}
	*/
	/*@Test
	public void listtActiveListTestCase() {
		int status = productDAO.listActiveProductByCategory("Cat000").size();
		assertEquals("list of  category",2, status);
		int flag = productDAO.listActiveProductByCategory("Cat001").size();
		assertEquals("list of  category",1, flag);
		int flag1 = productDAO.listActiveProduct().size();
		assertEquals("list of  category",3, flag1);
		int flag2 = productDAO.getLastActiveProduct(2).size();
		assertEquals("list of  category",2, flag2);
	}
*/
}
