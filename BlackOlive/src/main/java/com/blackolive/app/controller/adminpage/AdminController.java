package com.blackolive.app.controller.adminpage;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.adminpage.ProductDTO;
import com.blackolive.app.domain.adminpage.ProductDisplayDTO;
import com.blackolive.app.service.adminpage.AdminPageIndexService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/adminpage/*")
@Log4j
public class AdminController {
	
	@Autowired
	private AdminPageIndexService adminPageIndexService;
	
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
