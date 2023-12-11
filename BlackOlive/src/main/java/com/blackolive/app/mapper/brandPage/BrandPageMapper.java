package com.blackolive.app.mapper.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.blackolive.app.domain.brandPage.BrandPageDTO;

public interface BrandPageMapper {

	
	
	//브랜드가져오기
	public BrandPageDTO getBrands(@Param("brandId") String brandId);
	// 스킨케어순,마스크팩(대카테고리) 클릭시 가져오기, 인기순, 신상품순, 판매순 클릭시 가져오기   
	public List<BrandPageDTO> getSortBrands(@Param("brandId") String brandId,@Param("sort") String sort,@Param("dispcato") String dispcatno);
	//베스트상품 4개(술라이드바용)
	public List<BrandPageDTO> getsellProduct(@Param("brandId") String brandId,@Param("categoryId") String categoryId);
	//리뷰 가져오기 
	public List<BrandPageDTO> getReviews(@Param("productDisplayId") String productDisplayId);
	
	// 리뷰 클릭시  상세보기 
	
	
    // 프로필 가져오기  	
	// 리뷰 상세내역 가져오기 
}
