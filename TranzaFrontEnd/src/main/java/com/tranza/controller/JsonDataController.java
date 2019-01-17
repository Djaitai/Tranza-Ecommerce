package com.tranza.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.model.Product;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@ResponseBody
	@RequestMapping("/all/products")
	public List<Product> getAllProducts()
	{
		return productDAO.listActiveProduct();
	}
	
	
	@ResponseBody
	@RequestMapping("admin/all/products")
	public List<Product> getAllProductsForAdmin()
	{
		return productDAO.getAllProduct();
	}
	
	@ResponseBody
	@RequestMapping("/category/{categoryId}/products")
	public List<Product> getProductByCategory( @PathVariable int categoryId)
	{
		return productDAO.listActiveProductByCategory(categoryId);
	}
	

}
