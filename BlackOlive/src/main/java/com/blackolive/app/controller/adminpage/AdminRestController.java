package com.blackolive.app.controller.adminpage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.service.adminpage.AdminPageIndexService;
import com.blackolive.app.service.adminpage.AdminPageIndexServiceImpl;
import com.blackolive.app.service.adminpage.AdminPageRestService;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/adminpage/*")
@Log4j
public class AdminRestController {
	
	@Autowired
	private AdminPageIndexService adminPageIndexServiceImpl;
	
	@Autowired
	private AdminPageRestService adminPageRestService;

	@GetMapping("/salesPerMonth")
	public ResponseEntity<List<SalesPerMonthDTO>> getMoneyMonth(){
		log.info(" AdminRestController getMoneyMonth call...");
		
		List<SalesPerMonthDTO> salespermonth = this.adminPageIndexServiceImpl.getSalesPerMonthService(null);
		
		return salespermonth != null ? new ResponseEntity<List<SalesPerMonthDTO>>(salespermonth, HttpStatus.OK) 
				: new ResponseEntity<List<SalesPerMonthDTO>>(salespermonth, HttpStatus.INTERNAL_SERVER_ERROR);
	} // salesPerMonth
	
	@GetMapping("/salesPerDay")
	public ResponseEntity<List<SalesPerDayDTO>> getSalesPerDay(){
		
		log.info(" AdminRestController getSalesPerDay call...");
		
		List<SalesPerDayDTO> salesPerDay = this.adminPageIndexServiceImpl.getSalesPerDayService(null);
		
		return salesPerDay != null ? new ResponseEntity<List<SalesPerDayDTO>>(salesPerDay,HttpStatus.OK) 
					: new ResponseEntity<List<SalesPerDayDTO>>(HttpStatus.INTERNAL_SERVER_ERROR);
	} // getSalesPerDay
	
	@GetMapping("/getLargeCategory")
	public ResponseEntity<List<CategoryLargeDTO>> getLargeCategory(@RequestParam("totalId")int totalId){
		log.info(" AdminRestController /adminpage/getLargeCategory call...");
		
		List<CategoryLargeDTO> categoryLargeList = this.adminPageRestService.getLargeCategoryService(totalId);
		
		return categoryLargeList != null ? new ResponseEntity<List<CategoryLargeDTO>>(categoryLargeList, HttpStatus.OK) 
				: new ResponseEntity<List<CategoryLargeDTO>>(categoryLargeList, HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
