package com.blackolive.app.controller.productdetail;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.productdetail.ProductDetailDTO;
import com.blackolive.app.service.productdetail.ProductDetailService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class ProductDetailAjaxController {
	private ProductDetailService productDetailService;
	
	@GetMapping("/store/getProduct/{productDisplayId}")
	public ResponseEntity<ProductDetailDTO> getProduct(@PathVariable String productDisplayId) {
		return new ResponseEntity<>(this.productDetailService.getOneProduct(productDisplayId), HttpStatus.OK);
	}
}
