package com.tranza.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranza.ecommerce.dao.CartLineDAO;
import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.model.Cart;
import com.tranza.ecommerce.model.CartLine;
import com.tranza.ecommerce.model.Product;
import com.tranza.model.UserModel;

@Service("cartService")
public class CartService {
	
	@Autowired
	private CartLineDAO cartLineDAO;
	
	@Autowired
	private ProductDAO productDAO;
		
	@Autowired
	private HttpSession session;
	
	
	
	
	
	//Get the session form the UserModel.... Coz we get the session there
		//And this method return the cart of the user who has logged in 
		private Cart getCart() {
			return ((UserModel)session.getAttribute("userModel")).getCart();
		}
	
	//Fetch the cartLine from the DB
	//Return the entire cart using getCartID()
	public List<CartLine> getCartLines() {

		//Cart cart = this.getCart();
		return cartLineDAO.CartLineList(this.getCart().getCartId());

	}

	public String manageCartLine(int cartLineId, int count) {
		// Fetch the cartLine 
		CartLine cartLine = cartLineDAO.getCartLineById(cartLineId);
		if(cartLine == null) {
			return "result=error";
		}
		else {
			Product product = cartLine.getProduct();
			double oldTotal = cartLine.getTotal();
			
			//Checking if the product Quantity is available
			if(product.getQuantity() < count) {
				count = (int) product.getQuantity();
				return "result=unavailable";
			}
			
			cartLine.setProductCount(count);
			cartLine.setBuyingPrice(product.getUnitPrice());
			cartLine.setTotal(product.getUnitPrice() * count);
			cartLineDAO.updateCartLine(cartLine);
			Cart cart = this.getCart();
			cart.setGrandTotal(cart.getGrandTotal() - oldTotal + cartLine.getTotal());
			cartLineDAO.updateCart(cart);
			return "result=updated";
		}
	}

	
	
	
	public String deleteCartLine(int cartLineId) {
		
		// Fetch the cartLine
		CartLine cartLine = cartLineDAO.getCartLineById(cartLineId);
		// deduct the cart
		// update the cart
		if(cartLine == null) {
			return "result=error";
		}
		else {
			//UPDATE THE CART
			Cart cart = this.getCart();	
			cart.setGrandTotal(cart.getGrandTotal() - cartLine.getTotal());
			cart.setCartLines(cart.getCartLines() - 1);		
			cartLineDAO.updateCart(cart);
			
			// remove the cartLine
			cartLineDAO.removeCartLine(cartLine);
					
			return "result=deleted";
		}
		
	}

	public String addCartLine(int productId) {	
		//Get the cart from the session
		Cart cart = this.getCart();
		String response = null;
		CartLine cartLine = cartLineDAO.getByCartAndProduct(cart.getCartId(), productId);
		if(cartLine==null) {
			// add a new cartLine if a new product is getting added
			cartLine = new CartLine();
			Product product = productDAO.getProductById(productId);
			
			// transfer the product details to cartLine
			cartLine.setCartId(cart.getCartId());
			cartLine.setProduct(product);
			cartLine.setProductCount(1);
			cartLine.setBuyingPrice(product.getUnitPrice());
			cartLine.setTotal(product.getUnitPrice());
			cartLine.setAvailable(true);
			
			// insert a new cartLine
			cartLineDAO.addCartLine(cartLine);
			
			// update the cart
			cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
			cart.setCartLines(cart.getCartLines() + 1);
			cartLineDAO.updateCart(cart);

			response = "result=added";						
		} 
		else {
			// check if the cartLine has been already reached to maximum count
			if(cartLine.getProductCount() < 3) {
				//Update the product count for that particular cartLine
				// call the manageCartLine method to increase the count
				response = this.manageCartLine(cartLine.getCartLineId(), cartLine.getProductCount() + 1);				
			}			
			else {				
				response = "result=maximum";				
			}						
		}
		
		return response;
}
	
	


	
}
