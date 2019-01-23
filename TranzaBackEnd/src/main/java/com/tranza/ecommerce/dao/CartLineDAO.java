package com.tranza.ecommerce.dao;

import java.util.List;

import com.tranza.ecommerce.model.Cart;
import com.tranza.ecommerce.model.CartLine;

public interface CartLineDAO {

	public List<CartLine> CartLineList(int cartId);
	public CartLine getCartLineById(int cartLineId);	
	public boolean addCartLine(CartLine cartLine);
	public boolean updateCartLine(CartLine cartLine);
	public boolean removeCartLine(CartLine cartLine);
	
	// list of available cartLine
	public List<CartLine> listAvailable(int cartId);
	
	// fetch the CartLine based on cartId and productId
	public CartLine getByCartAndProduct(int cartId, int productId);		
		
		//Update a cart... Method related to a cart
		boolean updateCart(Cart cart);
	
	
	
	//ADDING MORE METHODS
	
	// adding order details
	//boolean addOrderDetail(OrderDetail orderDetail);
}
