package com.tranza.ecommerce.dao;

import java.util.List;

import com.tranza.ecommerce.model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);
	
	public Boolean  updateProduct(Product product);
	
	public Boolean deleteProduct(Product product);
	
	public Product getProductById(int productId);
	
	List<Product> getAllProduct();
	
	//Business methods
	List<Product> listActiveProduct();
	List<Product> listActiveProductByCategory(int categoryId);
	List<Product> getLastActiveProduct(int count);
	
	//Add more business methods
	
}
