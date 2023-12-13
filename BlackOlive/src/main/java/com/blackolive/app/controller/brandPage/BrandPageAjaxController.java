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

@RestController  //rest 요청을 처리하는 spingmvx 컨트롤러 
@RequestMapping   //기본 uri 에 대한 매핑을 제공
@AllArgsConstructor  //모든 매개변수 생성자를 생성합
public class BrandPageAjaxController {

	@RestController
	public class BrandAjaxController { //BrandAjaxController 내부 클래스를 정의

		private final BrandPageService brandPageService;

		@Autowired
		public BrandAjaxController(BrandPageService brandPageService) { //@Autowired를 사용하여 BrandPageService 의존성을 생성자 주입
			this.brandPageService = brandPageService;
		}

		@GetMapping("/getSortBrands")  // "/getSortBrands" URI에서 GET 요청을 처리
		public ResponseEntity<List<BrandPageDTO>> getSortBrands(
				@RequestParam String brandId,  //@RequestParam: 요청에서 매개변수를 메서드 매개변수에 바인딩
				@RequestParam String sort,
				@RequestParam String dispcatno) {

		 
			try {
				List<BrandPageDTO> brandList = brandPageService.getSortBrands(brandId, sort, dispcatno); //BrandPageService의 getSortBrands 메서드를 호출하여 정렬된 브랜드 목록을 가져옵
				return new ResponseEntity<>(brandList, HttpStatus.OK); //성공한 경우 ResponseEntity를 반환
			} catch (Exception e) {
				e.printStackTrace();
				return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
	}
}



