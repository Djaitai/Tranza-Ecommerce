package com.tranza.ecommerce;



import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.tranza.ecommerce.dao.CartLineDAO;
import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.dao.UserDAO;
import com.tranza.ecommerce.model.Cart;
import com.tranza.ecommerce.model.CartLine;
import com.tranza.ecommerce.model.Product;
import com.tranza.ecommerce.model.User;

public class CartLineTestCase {

private static AnnotationConfigApplicationContext context;
	
	
	private static CartLineDAO cartLineDAO;
	private static ProductDAO productDAO;
	private static UserDAO userDAO;
	
	
	private CartLine cartLine = null;
	private Product product = null;
	private User user = null;
	private Cart cart = null;
	
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.tranza");
		context.refresh();
		cartLineDAO = (CartLineDAO)context.getBean("cartLineDAO");
		productDAO = (ProductDAO)context.getBean("productDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
	}
	
	
	@Test
	public void testAddCartLine() {
		
		// fetch the user and then cart of that user
		User user = userDAO.getUserByEmail("djaitai@gmail.com");	
		//Fetch the cart
		Cart cart = user.getCart();
		
		// fetch the product 
		Product product = productDAO.getProductById(2);
		
		// Create a new CartLine
		cartLine = new CartLine();
		cartLine.setBuyingPrice(product.getUnitPrice());
		cartLine.setProductCount(cartLine.getProductCount() + 1);
		cartLine.setTotal(product.getUnitPrice() * cartLine.getProductCount());
		cartLine.setAvailable(true);
		cartLine.setCartId(cart.getCartId());
		cartLine.setProduct(product);

		
		
		
		/*cart.setGrandTotal(cart.getGrandTotal() + (cartLine.getTotal() - oldTotal));*/
		
		assertEquals("Failed to add the CartLine!",true, cartLineDAO.addCartLine(cartLine));
		
		// Update the cart
		cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
		cart.setCartLines(cart.getCartLines() + 1);
		assertEquals("Failed to add the CartL!",true, cartLineDAO.updateCart(cart));
	}
	
	
	/*@Test
	public void testUpdateCartLine() {

		// fetch the user and then cart of that user
		User user = userDAO.getUserByEmail("absr@gmail.com");		
		Cart cart = user.getCart();
				
		cartLine = cartLineDAO.getByCartAndProduct(cart.getCartId(), 2);
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);
				
		double oldTotal = cartLine.getTotal();
				
		cartLine.setTotal(cartLine.getProduct().getUnitPrice() * cartLine.getProductCount());
		
		cart.setGrandTotal(cart.getGrandTotal() + (cartLine.getTotal() - oldTotal));
		
		assertEquals("Failed to update the CartLine!",true, cartLineDAO.updateCartLine(cartLine));	

		
}*/

}
