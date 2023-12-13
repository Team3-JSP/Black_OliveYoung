package com.blackolive.app.controller.productList;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.service.productList.ProductListService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class ProductLikeAjaxController {
	
	@Autowired
	private ProductListService productListService;

	@GetMapping("/productLikeToggle")

	public ResponseEntity<String> LikeToggle(
			Authentication authentication,
			@RequestParam String productDisplayId
			) {

		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>ProductLikeAjaxController");
		log.info("ProductLikeAjaxController /productLikeToggle call..");
		
		// 로그인 됐는지 안됐는지
		if (authentication != null && authentication.isAuthenticated() ) {

			log.info("ProductLikeAjaxController authentication..");
			
			// userId 갖고오기
			String userId = authentication.getName();
			
			// productIsLiked 상품 좋아요 체크 되어있는지 확인 
			boolean productIsLiked = this.productListService.isProductLikedSerivce(userId, productDisplayId);
			String isLikedString = String.valueOf(!productIsLiked); // ResponseEntity 응답메시지를 쉽게 하기 위해 변환 작업
			
			
			if (productIsLiked) { // 좋아요 체크 되어 있을시 
				boolean removeProductLike = this.productListService.removeProductLikeSerivce(userId, productDisplayId);
				
			}else { // 좋아요 체크 안되어 있을시 
				boolean addProductLike = this.productListService.addProductLikeSerivce(userId, productDisplayId);
			}

			return ResponseEntity.ok( isLikedString );
			
		} // if
		
		// 로그인이 안되어 있을 시 
		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인이 안되어 있습니다.");

	} // LikeToggle	
	
} 
