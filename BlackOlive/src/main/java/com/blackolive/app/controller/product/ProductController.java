package com.blackolive.app.controller.product;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.product.ProductDTO;
import com.blackolive.app.service.product.ProductService;
import com.blackolive.app.service.productList.ProductListService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/store/goods")
public class ProductController {
	
	private ProductService productService;
	private ProductListService productListService;
	
	@GetMapping()
	public String getProductInfo(@RequestParam("goodsNo")String productDisplayId,
					Model model) {
		//=======================  해당 상품의 모든 카테고리 ===========================
		AllCategoryDTO allCategoryDTO = this.productService.getTotalCategoryService(productDisplayId);
		int cateHId = allCategoryDTO.getCategortTotalId();
		String CategoryLargeId = allCategoryDTO.getCategoryLargeId();
		String CategoryMidId = allCategoryDTO.getCategoryMidId();
		
		List<CategoryLargeDTO> categoryLargeList = this.productListService.getCategoryLargeService(CategoryMidId);
		List<CategoryMidDTO> categoryMidList = this.productListService.getCategoryMidService(CategoryLargeId);
		List<CategorySmallDTO> categorySmallList = this.productListService.getCategorySmallService(CategoryMidId);
		
		model.addAttribute("allCateDTO",allCategoryDTO);
		model.addAttribute("cLList",categoryLargeList);
		model.addAttribute("cMList",categoryMidList);
		model.addAttribute("cSList",categorySmallList);
		
		//=======================  해당 상품의 모든 상위칸에 있는 정보 ===========================	
		List<ProductDTO> productList = this.productService.getProductService(productDisplayId);
		model.addAttribute("pLists",productList);
		
		//=======================  해당 상품의 프로모션 ===========================
		
		//======================= 해당 상품의 이미지 갖고오기 ===========================
		
		//======================= 해당 상품의 설명 이미지 갖고오기 ===========================
		
		// ======================= 해당 상품의 리뷰 갖고오기 ===========================
		
		// ======================= 해당 브랜드 정보 갖고오기 ===========================
		
		// ======================= 해당 상품 상세 정보 갖고오기 ===========================
		
		// ======================= 해당 브랜드 QnA 갖고오기 ===========================	
		
		// ======================= (데이터 수집) 사용자가 조회했던 중분류 카테고리 저장 ========
		
		// ===================== 상품 추천
		
		// 쿠키 값확인
		return "product.product";
	}

}
