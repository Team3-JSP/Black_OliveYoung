package com.blackolive.app.controller.productdetail;

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
import com.blackolive.app.domain.productdetail.ProductBuyinfoDTO;
import com.blackolive.app.domain.productdetail.ProductDetailBrandDTO;
import com.blackolive.app.domain.productdetail.ProductDetailDTO;
import com.blackolive.app.domain.productdetail.ProductDetailExplainIMGDTO;
import com.blackolive.app.domain.productdetail.ProductDetailIMGDTO;
import com.blackolive.app.domain.productdetail.ProductPromotionDTO;
import com.blackolive.app.domain.productdetail.QnAListDTO;
import com.blackolive.app.domain.review.ReviewDTO;
import com.blackolive.app.service.productList.ProductListService;
import com.blackolive.app.service.productdetail.ProductDetailService;
import com.blackolive.app.service.review.ReviewService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/store/goods")
public class ProductDetailController {
	
	private ProductDetailService productDetailService;
	private ProductListService productListService;
	private ReviewService reviewService;
	
	@GetMapping()
	public String getProductInfo(@RequestParam("productDisplayId")String productDisplayId,
					Model model) {
		//=======================  해당 상품의 모든 카테고리 ===========================
		AllCategoryDTO allCategoryDTO = this.productDetailService.getTotalCategoryService(productDisplayId);
		
		int cateHId = allCategoryDTO.getCategoryTotalId();
		String CategoryLargeId = allCategoryDTO.getCategoryLargeId();
		String CategoryMidId = allCategoryDTO.getCategoryMidId();
		
		// 상품 조회 기록 저장
		this.productDetailService.insertProductViewSerivce(CategoryLargeId, productDisplayId);
		
		List<CategoryLargeDTO> categoryLargeList = this.productListService.getCategoryLargeService(CategoryMidId);
		List<CategoryMidDTO> categoryMidList = this.productListService.getCategoryMidService(CategoryLargeId);
		List<CategorySmallDTO> categorySmallList = this.productListService.getCategorySmallService(CategoryMidId);
		
		model.addAttribute("allCategoryDTO",allCategoryDTO);
		model.addAttribute("categoryLargeList",categoryLargeList);
		model.addAttribute("categoryMidList",categoryMidList);
		model.addAttribute("categorySmallList",categorySmallList);
		
		//=======================  해당 상품의 모든 상위칸에 있는 정보 ===========================	
		List<ProductDetailDTO> productList = this.productDetailService.getProductService(productDisplayId);
		model.addAttribute("productList",productList);
		
		//=======================  해당 상품의 프로모션 ===========================
		List<ProductPromotionDTO>productPromotion = this.productDetailService.getProductPromotionService(productDisplayId);
		model.addAttribute("productPromotion",productPromotion);
		
		//======================= 해당 상품의 이미지 갖고오기 ===========================
		List<ProductDetailIMGDTO> productDisplayImgs = this.productDetailService.getProductDisplayImgService(productDisplayId);
		model.addAttribute("productDisplayImgs", productDisplayImgs);
		
		//======================= 해당 상품의 설명 이미지 갖고오기 ===========================
		List<ProductDetailExplainIMGDTO> productExplainImgs = this.productDetailService.getProductDisplayExplainImgService(productDisplayId);
		model.addAttribute("productExplainImgs", productExplainImgs);
		
		// ======================= 해당 상품의 리뷰 갖고오기 ===========================
		List<ReviewDTO> reviewlist = this.reviewService.reviewListService(productDisplayId, "02", "All", 1, 1);
		// model.addAttribute("reviewlist",reviewlist);
		// ======================= 해당 브랜드 정보 갖고오기 ===========================
		ProductDetailBrandDTO productBrandInfo = this.productDetailService.getProductBrandInfoSerivce(productDisplayId);
		model.addAttribute("productBrandInfo", productBrandInfo);
		
		// ======================= 해당 상품 상세 설명 정보 갖고오기 ===========================
		List<ProductBuyinfoDTO> productBuyinfo = this.productDetailService.getProductBuyInfoService(productDisplayId);
		model.addAttribute("productBuyinfo", productBuyinfo);
		
		// ======================= 해당 QnA 갖고오기 ===========================
		List<QnAListDTO> qnaList = this.productDetailService.getProductQnaService(productDisplayId);
		model.addAttribute("qnaList", qnaList);
		
		// ======================= (데이터 수집) 사용자가 조회했던 중분류 카테고리 저장 ========
		
		// ===================== 상품 추천
		
		// 쿠키 값확인
		return "productDetail.productDetail";
	}

}
