package com.blackolive.app.controller.productList;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductLikeAjaxController {

	@GetMapping("/productLikeToggle")
	public ResponseEntity<String> LikeToggle( Authentication authentication, @RequestParam("productDisplayId") String productDisplayId) {
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>ProductLikeAjaxController");
		// 로그인 됐는지 안됐는지
		if (authentication != null && authentication.isAuthenticated() ) {
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>ProductLikeAjaxController 안에 들어옴 ㅋㅋ");	
			
			return ResponseEntity.ok(authentication.getName());
		} else {
		
		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("toggle denied");
		}
	} // LikeToggle	
	
} 
