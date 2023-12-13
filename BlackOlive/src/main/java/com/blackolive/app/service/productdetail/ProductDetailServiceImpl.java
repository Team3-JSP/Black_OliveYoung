package com.blackolive.app.service.productdetail;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.productdetail.ProductDetailBrandDTO;
import com.blackolive.app.domain.productdetail.ProductDetailDTO;
import com.blackolive.app.domain.productdetail.ProductDetailExplainIMGDTO;
import com.blackolive.app.domain.productdetail.ProductDetailIMGDTO;
import com.blackolive.app.domain.productdetail.ProductPromotionDTO;
import com.blackolive.app.mapper.head.HeadMapper;
import com.blackolive.app.mapper.productdetail.ProductDetailMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ProductDetailServiceImpl implements ProductDetailService{

	private HeadMapper headMapper;
	private ProductDetailMapper productMapper;
	
	@Override
	public AllCategoryDTO getTotalCategoryService(String productDisplayId) {
		log.info("ProductDetailServiceImpl getTotalCategoryService call...");
		
		return this.headMapper.getTotalCategory(productDisplayId);
	} // getTotalCategoryService

	@Override
	public List<ProductDetailDTO> getProductService(String productDisplayId) {
		log.info("ProductDetailServiceImpl getProductService call...");
		
		return this.productMapper.getProduct(productDisplayId);
	} // getProductService

	// ============================ 현재 상품의 프로모션 갖고오기 ==============================
	@Override
	public ProductPromotionDTO getProductPromotionService(String productDisplayId) {
		log.info("ProductDetailServiceImpl getProductPromotionService call...");
		
		return this.productMapper.getProductPromotion(productDisplayId);
	} // getProductPromotionService

	// ============================ 현재 상품의 이미지 갖고오기 ==============================
	@Override
	public List<ProductDetailIMGDTO> getProductDisplayImgService(String productDisplayId) {
		log.info("ProductDetailServiceImpl getProductPromotionService call...");
		
		return this.productMapper.getProductDisplayImg(productDisplayId);
	} // getProductPromotionService

	// ============================ 해당 상품의 설명 이미지 갖고오기 ==============================
	@Override
	public List<ProductDetailExplainIMGDTO> getProductDisplayExplainImgService(String productDisplayId) {
		log.info("ProductDetailServiceImpl getProductDisplayExplainImgService call...");
		
		return this.productMapper.getProductDisplayExplainImg(productDisplayId);
	} // getProductDisplayExplainImgService

	// ============================ 해당 상품의 브랜드 정보 갖고오기 ==============================
	@Override
	public ProductDetailBrandDTO getProductBrandInfoSerivce(String productDisplayId) {
		log.info("ProductDetailServiceImpl getProductDisplayExplainImgService call...");
		
		return this.productMapper.getProductBrandInfo(productDisplayId);
	} 

} // class
