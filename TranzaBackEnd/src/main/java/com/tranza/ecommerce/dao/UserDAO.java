package com.tranza.ecommerce.dao;

import java.util.List;

import com.tranza.ecommerce.model.Address;
import com.tranza.ecommerce.model.Cart;
import com.tranza.ecommerce.model.User;

public interface UserDAO {

	// user related operation
	User getUserByEmail(String emailId);

	User getUserById(int userId);

	boolean addUser(User user);

	// adding and updating a new address
	Address getAddress(int addressId);

	boolean addAddress(Address address);

	boolean updateAddress(Address address);

	Address getBillingAddress(int userId);

	List<Address> listShippingAddresses(int userId);
	
}
