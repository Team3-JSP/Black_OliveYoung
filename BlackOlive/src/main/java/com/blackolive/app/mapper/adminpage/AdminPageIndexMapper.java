package com.blackolive.app.mapper.adminpage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;

public interface AdminPageIndexMapper {
	
	// 월별 판매량 갖고오기 getSalesPerMonth
	public List<SalesPerMonthDTO> getSalesPerMonth(@Param("brandId") String brandId);
	
	// 일별 판매량 갖고오기 getSalesPerday
	public List<SalesPerDayDTO> getSalesPerDay (@Param("brandId") String brandId);

} //interface
