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
		modelAndView.addObject("errorTitle", "La page n'est pas construite");
		modelAndView.addObject("errorDescription" , "La page sont à la recherche n'est pas disponible maintenant");
		modelAndView.addObject("title", "Page d'erreur 404");	
		return modelAndView;
	}
	
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundExceptionException()
	{
		ModelAndView modelAndView = new ModelAndView("error");
		modelAndView.addObject("errorTitle", "Le produit n'est pas disponible !!!!");
		modelAndView.addObject("errorDescription" , "Le produit que vous cherchez n'est pas disponible maintenant !!!");
		modelAndView.addObject("title", "Produit non disponible !!!");	
		return modelAndView;
	}
	
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException( Exception ex)
	{
		ModelAndView modelAndView = new ModelAndView("error");
		modelAndView.addObject("errorTitle", "Contactez votre administrateur !!!!");
		
		/**
		 * Only for debugging your app
		 */
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		ex.printStackTrace(pw);	
		modelAndView.addObject("errorDescription" , sw.toString());
		//modelAndView.addObject("errorDescription" , ex.toString());
		
		modelAndView.addObject("title", "Erreur!!!");	
		return modelAndView;
	}
}
