package com.blackolive.app.service.adminpage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blackolive.app.domain.adminpage.ProductDisplayDTO;
import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;
import com.blackolive.app.mapper.adminpage.AdminPageIndexMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminPageIndexServiceImpl implements AdminPageIndexService{
	
	@Autowired
	private AdminPageIndexMapper adminPageIndexMapper;

	// ============ 월별 판매량 구하기 =================
	@Override
	public List<SalesPerMonthDTO> getSalesPerMonthService(String brandId) {
		
		log.info("AdminPageIndexServiceImpl getSalesPerMonthService call..");
		
		return this.adminPageIndexMapper.getSalesPerMonth(brandId);
	}

	@Override
	public List<SalesPerDayDTO> getSalesPerDayService(String brandId) {
		
		log.info("AdminPageIndexServiceImpl getSalesPerMonthService call..");
		
		return this.adminPageIndexMapper.getSalesPerDay(brandId);
	}

	@Override
	public int getproductIdSeqService() {
		log.info("AdminPageIndexServiceImpl getproductIdSeqService call..");
		return this.adminPageIndexMapper.getproductIdSeq();
	}

	// 상품 표시 데이터 삽입
	@Override
	@Transactional
	public int insertProductDisplayService(ProductDisplayDTO productDisplay) {
		
		int rowCnt = this.adminPageIndexMapper.insertProductDisplay(productDisplay);
		
		return rowCnt;
	} 
	

} // class
