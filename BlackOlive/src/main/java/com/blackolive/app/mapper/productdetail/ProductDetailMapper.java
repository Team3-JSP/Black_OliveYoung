package com.blackolive.app.mapper.productdetail;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.domain.productdetail.ProductDetailBrandDTO;
import com.blackolive.app.domain.productdetail.ProductDetailDTO;
import com.blackolive.app.domain.productdetail.ProductDetailExplainIMGDTO;
import com.blackolive.app.domain.productdetail.ProductDetailIMGDTO;
import com.blackolive.app.domain.productdetail.ProductPromotionDTO;

public interface ProductDetailMapper {
	
	// 중분류 카테고리를 선택할 시 상위 카테고리 갖고오기
	public List<ProductDetailDTO> getProduct (@Param("productDisplayId") String productDisplayId);
	
	// 해당 상품의 프로모션 갖고오기 getProductPromotion
	public ProductPromotionDTO getProductPromotion(@Param("productDisplayId") String productDisplayId);
	
	// 해당 상품의 표시 이미지 갖고오기 getProductDisplayImg
	public List<ProductDetailIMGDTO> getProductDisplayImg(@Param("productDisplayId") String productDisplayId);
	
	// 해당 상품의 설명 이미지 갖고오기 getProductDisplayExplainImg
	public List<ProductDetailExplainIMGDTO> getProductDisplayExplainImg (@Param("productDisplayId") String productDisplayId);
	
	// 해당 상품의 브랜드 정보 갖고오기 getProductBrandInfo
	public ProductDetailBrandDTO getProductBrandInfo(@Param("productDisplayId") String productDisplayId);
	
} // interface
