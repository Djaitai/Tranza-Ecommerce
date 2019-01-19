package com.tranza.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.tranza.ecommerce.dao.UserDAO;
import com.tranza.ecommerce.model.User;
import com.tranza.model.UserModel;

@ControllerAdvice
public class GlobalController {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private HttpSession session;

	private UserModel userModel = null;
	private User user = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if (session.getAttribute("userModel") == null) {
			//add the user model if ituserModel object
			
			//Once the user is authenticated an d his not in the session get the authentication object 
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

			//if (!authentication.getPrincipal().equals("anonymousUser")) {
				
				// get the user from the database
				user = userDAO.getUserByEmail(authentication.getName());
				
				//if user is present
				if (user != null) {
					// create a new user model object to pass the user details
					userModel = new UserModel();
					// set the name and the id
					userModel.setId(user.getUserId());
					userModel.setFullName(user.getFirstName() + " " + user.getLastName());
					userModel.setEmail(user.getEmailId());
					userModel.setRole(user.getRole());

					if (user.getRole().equals("USER")) {
						
						//set the cart is only user is a buyer
						userModel.setCart(user.getCart());
					}

					//set userModel in the session
					session.setAttribute("userModel", userModel);
					return userModel;
				}
			//}
		}

		// userModel is not null get me that user
		return (UserModel) session.getAttribute("userModel");
	}

}