package com.blackolive.app.controller.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.brandPage.BrandPageDTO;
import com.blackolive.app.service.brandPage.BrandPageService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/brandPage")
@Log4j
public class BrandPageController {
	@Autowired
	private BrandPageService brandPageService;

	/*
	 * @Autowired public BrandPageController(BrandPageService brandPageService) {
	 * this.brandPageService = brandPageService; }
	 */
	// 브랜드 페이지로 이동
	@GetMapping
	public String brandPage(@RequestParam("brandId") String brandId,Model model) {
		 log.info("brandId : " + brandId );
		 
		BrandPageDTO brand = null; 
		 
		
		try {
			// 브랜드 정보 가져오기
			brand = this.brandPageService.getBrands(brandId);
			model.addAttribute("brand", brand);
   
			// 기본으로 보여줄 상품 목록 (인기순, 전체)
			/*
			 * List<BrandPageDTO> brandList = brandPageService.getSortBrands(brandId, "p",
			 * "cate_01"); model.addAttribute("brandList", brandList);
			 */
			// 베스트 상품 목록 가져오기 (슬라이드용)
			List<BrandPageDTO> bestProducts = brandPageService.getsellProduct(brandId, "cate_01");
			model.addAttribute("bestProducts", bestProducts);
			
			
			//리뷰목록 가져오기 (
			List<BrandPageDTO> reviewList = this.brandPageService.getReviews(brandId);
			model.addAttribute("reviewList", reviewList);

			return "brandPage.brandPage"; // 해당 뷰로 이동
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return "error"; // 에러 페이지로 이동
		}
	}
}    
/*
 * @GetMapping() public BrandDTO getsort
 */

