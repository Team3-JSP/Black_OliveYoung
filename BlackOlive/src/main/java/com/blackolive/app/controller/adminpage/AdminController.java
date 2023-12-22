package com.blackolive.app.controller.adminpage;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.adminpage.ProductDTO;
import com.blackolive.app.service.adminpage.AdminPageIndexService;

@Controller
@RequestMapping("/adminpage/*")
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
	
	@PostMapping("/product/registration")
	public String adminProductRegist(Model model
			, Principal principal
			, @RequestParam("productDisplayName") String productDisplayName
			, @RequestParam("productDTO")List<ProductDTO> productDTO) {
	
		int displayIdSeq = this.adminPageIndexService.getproductIdSeqService();
		String productDisplayId = "pd_" + displayIdSeq;
		String brandId = principal.getName();
		
		
		
		return "redirect:/adminpage/register";
	}

} //class
