package com.blackolive.app.service.brandPage;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.controller.brandPage.BrandDTO;

public interface BrandPageService {
	//브랜드가져오기
		public BrandDTO getBrands(String brandId) throws ClassNotFoundException, SQLException;
		// 스킨케어순,마스크팩(대카테고리) 클릭시 가져오기, 인기순, 신상품순, 판매순 클릭시 가져오기   
		public List<BrandDTO> getSortBrands(String brandId, String sort, String dispcatno) throws ClassNotFoundException, SQLException;
		//베스트상품 4개(술라이드바용)
		public List<BrandDTO> getsellProduct(String brandId, String categoryId) throws ClassNotFoundException, SQLException;
		//리뷰 가져오기 
		public List<BrandDTO> getReviews() throws ClassNotFoundException, SQLException;
		
		// 리뷰 클릭시  상세보기 
		
		
	    // 프로필 가져오기  	
		// 리뷰 상세내역 가져오기 
}
