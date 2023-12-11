package com.blackolive.app.controller.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.brandPage.BrandPageDTO;
import com.blackolive.app.service.brandPage.BrandPageService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping
@AllArgsConstructor
public class BrandPageAjaxController {

	@RestController
	public class BrandAjaxController {

	    private final BrandPageService brandPageService;

	    @Autowired
	    public BrandAjaxController(BrandPageService brandPageService) {
	        this.brandPageService = brandPageService;
	    }

	    @GetMapping("/getSortBrands")
	    public ResponseEntity<List<BrandPageDTO>> getSortBrands(
	    		@RequestParam String brandId,
	            @RequestParam String sort,
	            @RequestParam String dispcatno) {

	    	 try {
	             List<BrandPageDTO> brandList = brandPageService.getSortBrands(brandId, sort, dispcatno);
	             return new ResponseEntity<List<BrandPageDTO>>(brandList, HttpStatus.OK);
	         } catch (Exception e) {
	             e.printStackTrace();
	             return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	         }
	     }
	 }
}
	
	 

