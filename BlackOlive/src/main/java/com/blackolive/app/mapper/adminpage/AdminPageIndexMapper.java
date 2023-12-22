package com.blackolive.app.mapper.adminpage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;

public interface AdminPageIndexMapper {
	
	// 월별 판매량 갖고오기 getSalesPerMonth
	public List<SalesPerMonthDTO> getSalesPerMonth(@Param("brandId") String brandId);
	
	// 일별 판매량 갖고오기 getSalesPerday
	public List<SalesPerDayDTO> getSalesPerDay (@Param("brandId") String brandId);
	
	
	
	
	
	// ================= Rest Mapper ======================
	
	// 대분류 카테고리 갖고오는 작업 getLargeCategory
	public List<CategoryLargeDTO> getLargeCategory(@Param("categoryTotalId") int categoryTotalId);
	

} //interface
