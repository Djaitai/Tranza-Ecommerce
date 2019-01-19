package com.tranza.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.crypto.password.PasswordEncoder;
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
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	public RegisterModel init() {
		return new RegisterModel();
	}

	public void addUser(RegisterModel registerModel, User user) {

		registerModel.setUser(user);
	}

	public void addBilling(RegisterModel registerModel, Address billing) {

		registerModel.setBilling(billing);
	}
	
	
	public String validateUser(User user, MessageContext error) {
		  String transitionValue = "success";
		  
		  //Checking if password match confirm password
		   if(!user.getPassword().equals(user.getConfirmPassword())) {
		    error.addMessage(new MessageBuilder()
		    		.error()
		    		.source("confirmPassword").defaultText("Password does not match confirm password!")
		    		.build());
		    transitionValue = "failure";    
		   } 

		   // Check the uniqueness of emailId
		   if(userDAO.getUserByEmail(user.getEmailId())!=null) {
		    error.addMessage(new MessageBuilder().error().source(
		      "emailId").defaultText("Email address is already used!").build());
		    transitionValue = "failure";
		   }
		  return transitionValue;
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
		  
		  //Encode the password
		  user.setPassword(passwordEncoder.encode(user.getPassword()));
		  
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
