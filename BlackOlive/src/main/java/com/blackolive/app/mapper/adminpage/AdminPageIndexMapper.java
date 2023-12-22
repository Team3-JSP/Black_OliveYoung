package com.blackolive.app.mapper.adminpage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.adminpage.BuyInfoDTO;
import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;

public interface AdminPageIndexMapper {
	
	// 월별 판매량 갖고오기 getSalesPerMonth
	public List<SalesPerMonthDTO> getSalesPerMonth(@Param("brandId") String brandId);
	
	// 일별 판매량 갖고오기 getSalesPerday
	public List<SalesPerDayDTO> getSalesPerDay (@Param("brandId") String brandId);
	
	// 상품 표시 id에 쓸 시퀀스 미리 갖고오기
	public int getproductIdSeq(); 
	
	
	
	// ================= Rest Mapper ======================
	
	// 대분류 카테고리 갖고오는 작업 getLargeCategory
	public List<CategoryLargeDTO> getLargeCategory(@Param("categoryTotalId") int categoryTotalId);
	
	// 중분류 카테고리 갖고오는 작업
	public List<CategoryMidDTO> getMidCategory (@Param("categoryLargeId") String categoryLargeId);
	
	// 소분류 카테고리 갖고오는 작업
	public List<CategorySmallDTO> getSmallCategory (@Param("categoryMidId") String categoryMidId);
	
	// 구매 정보 갖고오는 작업 getBuyInfo
	public List<BuyInfoDTO> getBuyInfo (@Param("buyinfoCategory") int buyinfoCategory);
	
	

} //interface
