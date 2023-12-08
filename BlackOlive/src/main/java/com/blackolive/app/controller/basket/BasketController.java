package com.blackolive.app.controller.basket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BasketController {

	@RequestMapping("/basket")
	public String basket() {
		
		return "basket.basket";
	}
}
