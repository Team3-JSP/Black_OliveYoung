package com.blackolive.app.controller.productList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/store/display")
public class ProductListController {
	
	@GetMapping
	public String getProductList() {
		
		return "productList.productList";
	}

}
