package com.blackolive.app.service.productdetail;

import java.util.List;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.productdetail.ProductBuyinfoDTO;
import com.blackolive.app.domain.productdetail.ProductDetailBrandDTO;
import com.blackolive.app.domain.productdetail.ProductDetailDTO;
import com.blackolive.app.domain.productdetail.ProductDetailExplainIMGDTO;
import com.blackolive.app.domain.productdetail.ProductDetailIMGDTO;
import com.blackolive.app.domain.productdetail.ProductPromotionDTO;
import com.blackolive.app.domain.productdetail.QnADTO;

public interface ProductDetailService {
	
	AllCategoryDTO getTotalCategoryService(String productDisplayId);
	
	List<ProductDetailDTO> getProductService(String productDisplayId);
	
	// 해당 상품의 프로모션 갖고오기 getProductPromotion
	ProductPromotionDTO getProductPromotionService(String productDisplayId);
	
	// 해당 상품의 표시 이미지 갖고오기 getProductDisplayImg
	List<ProductDetailIMGDTO> getProductDisplayImgService(String productDisplayId);
	
	// 해당 상품의 설명 이미지 갖고오기 getProductDisplayExplainImg
	List<ProductDetailExplainIMGDTO> getProductDisplayExplainImgService(String productDisplayId);
	
	// 해당 상품의 브랜드 정보 갖고오기 getProductBrandInfo
	ProductDetailBrandDTO getProductBrandInfoSerivce(String productDisplayId);
	
	// 해당 상품의 구매정보 갖고오기 getProductBuyInfo
	List<ProductBuyinfoDTO> getProductBuyInfoService (String productDisplayId);
	
	// 해당 상품의 QnA 갖고오기 getProductQna
	List<QnADTO> getProductQnaService (String productDisplayId);
	
} // interface