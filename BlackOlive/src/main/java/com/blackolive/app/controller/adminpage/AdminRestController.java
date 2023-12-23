package com.blackolive.app.controller.adminpage;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.adminpage.BuyInfoDTO;
import com.blackolive.app.domain.adminpage.ProductDTO;
import com.blackolive.app.domain.adminpage.SalesPerDayDTO;
import com.blackolive.app.domain.adminpage.SalesPerMonthDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.service.adminpage.AdminPageIndexService;
import com.blackolive.app.service.adminpage.AdminPageRestService;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/adminrest")
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
	@ResponseBody
	public ResponseEntity<List<CategoryLargeDTO>> getLargeCategory(@RequestParam("totalId")int totalId){
		log.info(" AdminRestController /adminpage/getLargeCategory call...");
		

		List<CategoryLargeDTO> categoryLargeList = this.adminPageRestService.getLargeCategoryService(totalId);

		return categoryLargeList != null ? new ResponseEntity<List<CategoryLargeDTO>>(categoryLargeList, HttpStatus.OK) 
				: new ResponseEntity<List<CategoryLargeDTO>>(categoryLargeList, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping("/getMidCategory")
	@ResponseBody
	public ResponseEntity<List<CategoryMidDTO>> getMidCategory(@RequestParam("largeId")String largeId){
		log.info(" AdminRestController /adminrest/getMidCategory call...");

		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
		log.info("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<largeId: "+largeId);
		List<CategoryMidDTO> categoryMidList = this.adminPageRestService.getMidCategory(largeId);

		return categoryMidList != null ? new ResponseEntity<List<CategoryMidDTO>>(categoryMidList, HttpStatus.OK) 
				: new ResponseEntity<List<CategoryMidDTO>>(categoryMidList, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping("/getSmallCategory")
	@ResponseBody
	public ResponseEntity<List<CategorySmallDTO>> getSmallCategory(@RequestParam("midId")String midId){
		log.info(" AdminRestController /adminrest/getSmallCategory call...");

		List<CategorySmallDTO> categorySmallList = this.adminPageRestService.getSmallCategory(midId);

		return categorySmallList != null ? new ResponseEntity<List<CategorySmallDTO>>(categorySmallList, HttpStatus.OK) 
				: new ResponseEntity<List<CategorySmallDTO>>(categorySmallList, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping("/getBuyInfo")
	@ResponseBody
	public ResponseEntity<List<BuyInfoDTO>> getBuyInfo(@RequestParam("buyinfoCategory") int buyinfoCategory){
		log.info(" AdminRestController /adminrest/getBuyInfo call...");
		
		List<BuyInfoDTO> buyInfoList = this.adminPageRestService.getBuyInfoService(buyinfoCategory);
		
		return buyInfoList != null ? new ResponseEntity<List<BuyInfoDTO>>(buyInfoList, HttpStatus.OK)
									: new ResponseEntity<List<BuyInfoDTO>>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PostMapping("/product/registration")
	@ResponseBody
	public ResponseEntity<Integer> adminProductRegist(Model model
			, Principal principal
			, @RequestBody List<ProductDTO> productDTO
			, HttpServletRequest request) {
	
		// int displayIdSeq = this.adminPageIndexServiceImpl.getproductIdSeqService();
		// String productDisplayId = "pd_" + displayIdSeq;
		//String brandId = principal.getName();
		String brandId = "br_00000012";
		int rowCnt = 0;
		char productDisplayOption = 'N';
		if (productDTO.size() >= 1) {
			productDisplayOption = 'Y';
			rowCnt = 1;
		} // if
		
		String uri = request.getHeader("Referer");
		
		System.out.println(uri);
		
		
		// ProductDisplayDTO productDisplayDTO = new ProductDisplayDTO("1", brandId, productDisplayName, productDisplayOption);
		
		//System.out.println(">>>> productDisplayDTO: " + productDisplayDTO);
		System.out.println(">>>> productDTO: "+productDTO);
		log.error(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+productDTO);
		
		
		return rowCnt == 1 ? new ResponseEntity<Integer>(1,HttpStatus.OK) : new ResponseEntity<Integer>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
} // class
