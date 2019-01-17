package com.tranza.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException()
	{
		ModelAndView modelAndView = new ModelAndView("error");
		modelAndView.addObject("errorTitle", "The page is not constructed");
		modelAndView.addObject("errorDescription" , "The page are looking is not available now");
		modelAndView.addObject("title", "404 eror page");	
		return modelAndView;
	}
	
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundExceptionException()
	{
		ModelAndView modelAndView = new ModelAndView("error");
		modelAndView.addObject("errorTitle", "The product not available!!!!");
		modelAndView.addObject("errorDescription" , "The product that you are looking is not available now!!!");
		modelAndView.addObject("title", "Product unavailable!!!");	
		return modelAndView;
	}
	
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException( Exception ex)
	{
		ModelAndView modelAndView = new ModelAndView("error");
		modelAndView.addObject("errorTitle", "Contact your Administrator!!!!");
		
		/**
		 * Only for debugging your app
		 */
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		ex.printStackTrace(pw);	
		modelAndView.addObject("errorDescription" , sw.toString());
		//modelAndView.addObject("errorDescription" , ex.toString());
		
		modelAndView.addObject("title", "Error!!!");	
		return modelAndView;
	}
}
