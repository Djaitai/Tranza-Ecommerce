package com.tranza.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tranza.ecommerce.dao.UserDAO;
import com.tranza.ecommerce.model.Address;
import com.tranza.ecommerce.model.Cart;
import com.tranza.ecommerce.model.User;
import com.tranza.model.RegisterModel;

@Component
public class RegisterHandler {
	
	@Autowired
	private UserDAO userDAO;

	public RegisterModel init() {
		return new RegisterModel();
	}

	public void addUser(RegisterModel registerModel, User user) {

		registerModel.setUser(user);
	}

	public void addBilling(RegisterModel registerModel, Address billing) {

		registerModel.setBilling(billing);
	}
	
	 public String saveAll(RegisterModel registerModel) {
		  String transitionValue = "success";
		  
		  //Fetch  the user
		  User user = registerModel.getUser();
		  if(user.getRole().equals("USER")) {
		   // create a new cart
		   Cart cart = new Cart();
		   cart.setUser(user);
		   user.setCart(cart);
		}
		  
		  
		  
		  // save the user
		  userDAO.addUser(user);
		  
		  // get save the billing address
		  Address billing = registerModel.getBilling();
		  billing.setUserId(user.getUserId());
		  billing.setBilling(true); 
		  
		  //Save the address
		  userDAO.addAddress(billing);
		  
		return transitionValue;
	 }
	
	
	
}
