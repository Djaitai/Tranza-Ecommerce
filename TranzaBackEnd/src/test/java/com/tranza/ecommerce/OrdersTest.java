/*package com.tranza.ecommerce;

import static org.junit.Assert.assertEquals;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.tranza.ecommerce.dao.CartLineDAO;
import com.tranza.ecommerce.dao.OrdersDAO;
import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.dao.UserDAO;
import com.tranza.ecommerce.model.Orders;
import com.tranza.ecommerce.model.User;

public class OrdersTest {

	private static AnnotationConfigApplicationContext context;

	@Autowired
	private static OrdersDAO ordersDAO;
	
	@Autowired
	private User user;

	@Autowired
	private static Orders orders;
	
	@Autowired
	private static UserDAO userDAO;
	
	//@Autowired
	//private AddressDAO addressDAO;


	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.tranza");
		context.refresh();
		ordersDAO = (OrdersDAO)context.getBean("ordersDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
	}

	@Test
	public void addOrdersTest()
	{
		
		user = userDAO.getUserById(5);
		Orders orders = new Orders();
		orders.setOrderNumber(user.getContactNumber());
		orders.setItemsCount(2);
		orders.setItemsQuantity(3);
		orders.setUpdateOrderDate(new Date());
		Boolean status = ordersDAO.addOrders(orders);
		assertEquals("Save category", true, status);
	}
	
}
*/