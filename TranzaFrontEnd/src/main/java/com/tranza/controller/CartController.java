package com.tranza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tranza.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	
	@Autowired
	private CartService cartService;
	
	
	@RequestMapping("/show")
	public ModelAndView showCart(@RequestParam(name = "result", required = false) String result) {
		
		//ModelAndView modelAndView= new ModelAndView("home");
		ModelAndView modelAndView= new ModelAndView("cart");
		
		
		if(result!=null) {
			switch(result) {
				case "added":
					modelAndView.addObject("message", "Product has been successfully added inside cart!");					
					//cartService.validateCartLine();
					break;
				case "unavailable":
					modelAndView.addObject("message", "Product quantity is not available!");					
					break;
				case "updated":
					modelAndView.addObject("message", "Cart line has been updated successfully!");					
					//cartService.validateCartLine();
					break;
				case "error":
					modelAndView.addObject("message", "Something wrong here!!!");
					break;
				case "maximum":
					modelAndView.addObject("message", "Maximum limit for the item has been reached!");
					break;
				case "deleted":
					modelAndView.addObject("message", "CartLine has been successfully removed!");
					break;

			}
		}
		/*else {
			String response = cartService.validateCartLine();
			if(response.equals("result=modified")) {
				mv.addObject("message", "One or more items inside cart has been modified!");
			}
		}*/

		modelAndView.addObject("title", "User Cart");
		modelAndView.addObject("userClickShowCart", true);
		modelAndView.addObject("cartLines",  cartService.getCartLines());
		return modelAndView;
		
}
	
	@RequestMapping("/{cartLineId}/update")
	public String udpateCartLine(@PathVariable int cartLineId, @RequestParam int count) {
		String response = cartService.manageCartLine(cartLineId, count);		
		return "redirect:/cart/show?"+response;		
	}
	
	
	@RequestMapping("/{cartLineId}/delete")
	public String removeCartLine(@PathVariable int cartLineId) {
		String response = cartService.deleteCartLine(cartLineId);
		return "redirect:/cart/show?"+response;
	}
	
	
	@RequestMapping("/add/{productId}/product")
	public String addCartLines(@PathVariable int productId) {
		String response = cartService.addCartLine(productId);
		return "redirect:/cart/show?"+response;
	}

}
