package com.blackolive.app.controller.exhibition;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExhibitionController {

	@GetMapping("/store/getExhibition")
	public String getExhibition() {
		
		return "exhibition.exhibition";
	}//
	
	@GetMapping("/store/main/getExhibition")
	public String getMainExhibition() {
		
		return null;
	}
	
} // class
