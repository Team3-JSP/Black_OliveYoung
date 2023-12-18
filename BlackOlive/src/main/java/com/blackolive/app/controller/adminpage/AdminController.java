package com.blackolive.app.controller.adminpage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	@GetMapping("/adminpage")
	public String adminPage() {
		
		return "adminpage/index";
	}

} //class
