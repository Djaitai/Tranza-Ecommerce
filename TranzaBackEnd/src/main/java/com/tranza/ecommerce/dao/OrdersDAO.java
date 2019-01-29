package com.tranza.ecommerce.dao;

import java.util.List;

import com.tranza.ecommerce.model.Orders;

public interface OrdersDAO {
	
	public boolean addOrders(Orders orders);
	
	public boolean updateOrders(Orders orders);
	
	
	public boolean deleteOrders(Orders orders);
	
	public List<Orders> listAllOrders();
	
	public Orders getOrdersById(int ordersId);
	
	List<Orders> getOrdersByUser(int userId);

	
	// fetch the CartLine based on cartId and productId
		//public Orders getByCartAndProduct(int cartId, int productId);	

}
