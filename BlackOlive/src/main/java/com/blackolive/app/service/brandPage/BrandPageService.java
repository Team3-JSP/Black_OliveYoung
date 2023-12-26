package com.blackolive.app.service.brandPage;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.brandPage.BrandPageDTO;

public interface BrandPageService {

	//브랜드가져오기
	public BrandPageDTO getBrands(String brandId) throws ClassNotFoundException, SQLException;
	// 스킨케어순,마스크팩(대카테고리) 클릭시 가져오기, 인기순, 신상품순, 판매순 클릭시 가져오기   
	//public List<BrandPageDTO> getSortBrands(String brandId, String sort, String dispcatno, int numOfItems) throws ClassNotFoundException, SQLException;
	List<BrandPageDTO> getSortBrands(String brandId, String sort, String dispcatno, int numOfItems, int pageNumber,
			int pageSize) throws ClassNotFoundException, SQLException;
	//베스트상품 4개(술라이드바용)
	public List<BrandPageDTO> getsellProduct(String brandId, String categoryId) throws ClassNotFoundException, SQLException;
	//리뷰 가져오기 
	public List<BrandPageDTO> getReviews(String prductDisplyId) throws ClassNotFoundException, SQLException;
	// ajax  부분 html 으로 
	//public String createBrandPageHtml(String brandId, String sort, String dispcatno, int numOfItems) throws Exception;

	//paging 
	List<BrandPageDTO> pagingList(String brandId, String sort, String dispcatno, int startRow, int endRow)
			throws Exception;
	
	//페이징 불러오기 
	//List<BrandPageDTO> pagingList(String brandId, String sort, String dispcatno, int page) throws Exception;
	List<BrandPageDTO> pagingList(String brandId, String sort, String dispcatno, int page) throws Exception;
	//총페이지 불러오기
	int getTotalPages(String brandId, String sort, String dispcatno);
	
	
	public String createBrandPageHtml(String brandId, String sort, String dispcatno, int numOfItems, int pageNumber,
			int pageSize) throws Exception;
	
	
	
	
	
	
	


	// 리뷰 클릭시  상세보기 


	// 프로필 가져오기  	
	// 리뷰 상세내역 가져오기 
}
