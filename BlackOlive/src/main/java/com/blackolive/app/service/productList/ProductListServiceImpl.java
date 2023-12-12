package com.blackolive.app.service.productList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.CurrentCategoryInfoDTO;
import com.blackolive.app.domain.productList.CurrentCategoryNameDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.mapper.productList.ProductListMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductListServiceImpl implements ProductListService{
	
	@Autowired
	ProductListMapper listMapper;

	// ===============  중분류 카테고리를 선택할 시 대분류 카테고리 갖고오기 =====================
	@Override
	public List<CategoryLargeDTO> getCategoryLargeService(String midId) {
		log.info("ProductListServiceImpl getCategoryLargeService call...");
		int cateMidId = Integer.parseInt(midId);
		return this.listMapper.getCategoryLarge(cateMidId);
	} // getCategoryLargeService

	// ===============  중분류 카테고리를 선택할 시 소분류 카테고리 갖고오기 =====================
	@Override
	public List<CategorySmallDTO> getCategorySmallService(String midId) {
		log.info("ProductListServiceImpl getCategorySmallService call...");
		int cateMidId = Integer.parseInt(midId);
		System.out.println(cateMidId);
		return this.listMapper.getCategorySmall(cateMidId);
	} // getCategorySmallService

	// ===============  중분류 카테고리를 선택할 시 같은 대분류 카테고리에 있는 카테고리 갖고오기 =====================
	@Override
	public List<CategoryMidDTO> getCategoryMidService(String largeId) {
		log.info("ProductListServiceImpl getCategoryMidService call...");
		int cateLargeId = Integer.parseInt(largeId);
		System.out.println(cateLargeId);
		
		return this.listMapper.getCategoryMid(cateLargeId);
	} // getCategoryMidService

	// ===============  총 레코드 수 갖고오기 ============
	@Override
	public int getTotalRecordsSerivce(int group, String id, String[] brandId) {
		log.info("ProductListServiceImpl getTotalRecordsSerivce call...");
		
		return this.listMapper.getTotalRecords(group, id, brandId);
	} // getTotalRecordsSerivce

	// ===============  총 페이지 수 갖고오기 ============
	@Override
	public int getTotalPagesService(int group, int perPage, String id, String[] brandId) {
		log.info("ProductListServiceImpl getTotalPagesService call...");
		
		return this.listMapper.getTotalPages(group, perPage, id, brandId);
	} // getTotalPagesService
	
	// 브랜ㄷ
	@Override
	public List<BrandDTO> getBrandList(int group, String id) {
		log.info("ProductListServiceImpl getBrandList call...");
		return this.listMapper.getBrandList(group, id);
	}

 // ===============  상품 리스트 갖고오기 ============
	@Override
	public List<ProductContainer> getProductListService(int group, String id, String sort, String[] brandId,
			int currentPage, int perPage, String userId) {
		log.info("ProductListServiceImpl getProductListService call...");
		
		int begin = (currentPage -1) * perPage + 1;
		int end = begin + perPage -1 ;
		if (userId == null) {
			userId ="0";
		}//if
		
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+sort);
		
		return this.listMapper.getProductList(group, id, sort, brandId, currentPage, perPage, begin, end, userId);
	}

	// ===============  현재 카테고리 정보(현재 카테고리, 상위 카테고리) 갖고오기 ============
	@Override
	public CurrentCategoryInfoDTO getCurrentCategoryInfoSerivce(String midId) {
		log.info("ProductListServiceImpl getCurrentCategoryInfoSerivce call...");
		return this.listMapper.getCurrentCategoryInfo(midId);
	} // getCurrentCategoryInfoSerivce

	// ===============  현재 카테고리 이름 갖고오기 ============
	@Override
	public CurrentCategoryNameDTO getCurrentCategoryNameService(int group, String id) {
		log.info("ProductListServiceImpl getCurrentCategoryNameService call...");
		System.out.println(">>>>>>>>>>>"+this.listMapper.getCurrentCategoryName(group, id).getName());
		return this.listMapper.getCurrentCategoryName(group, id);
	} // getCurrentCategoryNameService

	// =============== 상품 좋아요 인써트 ============
	@Override
	public boolean addProductLikeSerivce(String userId, String productDisplayId) {
		log.info("ProductListServiceImpl addProductLikeSerivce call...");
		
		return this.listMapper.addProductLike(userId, productDisplayId);
	} // addProductLikeSerivce

	// ===============  상품 좋아요 삭제 ============
	@Override
	public boolean removeProductLikeSerivce(String userId, String productDisplayId) {
		log.info("ProductListServiceImpl removeProductLikeSerivce call...");
		
		return this.listMapper.removeProductLike(userId, productDisplayId);
	} // removeProductLikeSerivce

	// ===============  상품이 좋아요 있는지 없는지 확인 ============
	@Override
	public boolean isProductLikedSerivce(String userId, String productDisplayId) {
		log.info("ProductListServiceImpl isProductLikedSerivce call...");
		boolean isLiked = false;
		if ( this.listMapper.isProductLiked(userId, productDisplayId).equals("1") ) {
			isLiked = true;
		}
		return isLiked;
	} // isProductLikedSerivce

	
	
	
	
	
	
	

} // ProductListServiceImpl
