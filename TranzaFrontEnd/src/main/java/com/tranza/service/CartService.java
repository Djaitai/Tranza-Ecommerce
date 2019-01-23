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
			
			if(product.getQuantity() <= count) {
				count = (int) product.getQuantity();
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
	
	


	
}
