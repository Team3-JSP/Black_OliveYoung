package com.blackolive.app.service.adminpage;

import java.util.List;

import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;

public interface AdminPageIndexService {

	// 월별 판매량 갖고오기 getSalesPerMonth
	public List<SalesPerMonthDTO> getSalesPerMonthService (String brandId);
	
	// 일별 판매금액 갖고오기 getSalesPerDay
	public List<SalesPerDayDTO> getSalesPerDayService(String brandId);
	
	// 상품 표시 id에 쓸 시퀀스 미리 갖고오기
	public int getproductIdSeqService(); 
	
} // interface
