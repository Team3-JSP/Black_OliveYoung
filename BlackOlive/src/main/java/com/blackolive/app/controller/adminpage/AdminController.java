package com.blackolive.app.controller.adminpage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminpage")
public class AdminController {
	
	@GetMapping("/")
	public String adminPage() {
		
		return "adminpage/index";
	}
	
	@GetMapping("/product/register")
	public String adminProductRegisterPage() {
		
		return "adminpage/productregister";
	}
	
	@GetMapping("/product/view")
	public String adminProductViewPage() {
		
		return "adminpage/productview";
	}
	
	@GetMapping("/chart")
	public String chartpage() {
		
		return "adminpage/chart";
	}

} //class
