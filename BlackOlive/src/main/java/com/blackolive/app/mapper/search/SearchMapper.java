package com.blackolive.app.mapper.search;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.ProductContainer;

public interface SearchMapper {

	// 검색된 상품 리스트
	public List<ProductContainer> searchProductList(
			@Param("searchWord") String searchWord,
			@Param("categorySmallId") String categorySmallId,
			@Param("sort") String sort,
			@Param("brandId") String[] brandId,
			@Param("currentPage") int currentPage,
			@Param("perPage") int perPage,
			@Param("begin") int begin,
			@Param("end") int end,
			@Param("userId") String userId,
			@Param("minPrice") int minPrice,
			@Param("maxPrice") int maxPrice
			);
	// 검색된 상품의 스몰 카테고리
	public List<CategorySmallDTO> searchCategorySmall(@Param("searchWord") String searchWord);
	// 검색된 상품의 브랜드 목록
	public List<BrandDTO> searchBrandList(@Param("searchWord") String searchWord, @Param("categorySmallId")String categorySmallId);
	// 검색된 상품의 총 레코드 수
	public int searchTotalRecords(@Param("searchWord") String searchWord, 
			@Param("categorySmallId")String categorySmallId, 
			@Param("brandId")String brandId[],
			@Param("minPrice") int minPrice,
			@Param("maxPrice") int maxPrice);
	// 검색된 상품의 페이지 수
	public int searchTotalPages(@Param("searchWord") String searchWord, 
			@Param("categorySmallId")String categorySmallId, 
			@Param("perPage")int perPage, 
			@Param("brandId")String brandId[],
			@Param("minPrice") int minPrice,
			@Param("maxPrice") int maxPrice);
}
