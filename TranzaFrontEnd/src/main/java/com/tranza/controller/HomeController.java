package com.tranza.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tranza.ecommerce.dao.CategoryDAO;
import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.model.Category;
import com.tranza.ecommerce.model.Product;
import com.tranza.exception.ProductNotFoundException;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value = {"/" , "/home" , "index"})
	public ModelAndView index()
	{
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("title", "Home");
		
		logger.info("Inside HomeController inde method - INFO");
		logger.debug("Inside HomeController inde method - DEBIG");
		
		modelAndView.addObject("userClickHome", true);
		//Passing the list of categories
		modelAndView.addObject("categories", categoryDAO.getAllCategory());
		return modelAndView;
	}
	
	/**

	 * Method to load all the product based on category
	 */
	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts()
	{
		//ModelAndView modelAndView = new ModelAndView("home");
		ModelAndView modelAndView = new ModelAndView("listProducts");
		modelAndView.addObject("title", "Tout nos Produits");
		modelAndView.addObject("categories", categoryDAO.getAllCategory());
		modelAndView.addObject("userClickAllProducts", true);
		return modelAndView;
	}
	
	@RequestMapping(value = "show/category/{categoryId}/products")
	public ModelAndView showCategoryProducts(@PathVariable("categoryId") int categoryId)
	{
		//ModelAndView modelAndView = new ModelAndView("home");
		ModelAndView modelAndView = new ModelAndView("listProducts");
		
		//CategoryDAO to fetch a single category
		category = categoryDAO.getCategoryById(categoryId);
		modelAndView.addObject("title", category.getCatName());
		
		//passing the list of  categories
		modelAndView.addObject("categories", categoryDAO.getAllCategory());
		
		//passing the single category object 
		modelAndView.addObject("category", category);
		
		modelAndView.addObject("userClickCategoryProducts", true);
		return modelAndView;
	}
	
	
	
	@RequestMapping(value ="/about")
	public ModelAndView about()
	{
		ModelAndView modelAndView = new ModelAndView("about");
		modelAndView.addObject("title", "About us");
		modelAndView.addObject("userClickAbout", true);
		return modelAndView;
	}
	
	@RequestMapping(value ="/contact")
	public ModelAndView contact()
	{
		ModelAndView modelAndView = new ModelAndView("contact");
		modelAndView.addObject("title", "Contact us");
		modelAndView.addObject("userClickContact", true);
		return modelAndView;
	}
	
	
	/**
	  View a single product
	 */
	
	@RequestMapping(value = "show/{productId}/product")
	public ModelAndView showSingleProduct(@PathVariable int productId) throws ProductNotFoundException
	{
		//ModelAndView modelAndView = new ModelAndView("home");
		ModelAndView modelAndView = new ModelAndView("viewProduct");
		Product product = productDAO.getProductById(productId);
		
		// if Product is not found throw ProductNotFoundException exception
		if(product == null) throw new ProductNotFoundException();
		
		
		//Update the view count
		product.setViews(product.getViews() + 1);
		productDAO.updateProduct(product);
		//---------------------------------
		
		modelAndView.addObject("title" , product.getProductName());
		modelAndView.addObject("product" , product);		
		modelAndView.addObject("userClickShowProduct" , true);		
		return modelAndView;
		
	}
	
	/** Having similar mapping to our flow id **/
	@RequestMapping(value = "/register")
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("title" , "About Us");
		return modelAndView;
	}
	
	/** Login **/
	@RequestMapping(value ="/login")
	public ModelAndView login(@RequestParam(name="error" , required = false) String error ,
							  @RequestParam(name="logout" , required = false) String logout)
	{
		ModelAndView modelAndView = new ModelAndView("login");
		
		if(error!=null)
		{
			modelAndView.addObject("message" , "Nom d'utilisateur et mot de passe invalides");
		}
		
		if(logout!=null)
		{
			modelAndView.addObject("logout" , "L'utilisateur s'est déconnecté avec succès ");
		}
		
		modelAndView.addObject("title", "Connecte");
		return modelAndView;
	}
	
	
	/** Logout**/
	//it return String bcoz we redirect it to login
	@RequestMapping(value ="/perform-logout")
	public String logout(HttpServletRequest request , HttpServletResponse response)
	{
		//First we going to fetch the authentication
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		//if the user is authenticated - Authentication object is not going to be null
		if(authentication!=null) {
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		
		return "redirect:/login?logout";
	}
	
	
	/*** Access denied page**/
	@RequestMapping(value ="/access-denied")
	public ModelAndView accessDenied()
	{
		ModelAndView modelAndView = new ModelAndView("error");
		modelAndView.addObject("title", "403 - Accès refusé");
		modelAndView.addObject("errorTitle", "Aha! - Je t'ai eu");
		modelAndView.addObject("errorDescription", "Vous n'êtes pas autorisé à afficher cette page");
		return modelAndView;
	}
	

}
