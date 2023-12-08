package com.blackolive.app.controller.productList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.PageDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.service.productList.ProductListService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/store/display")
public class ProductListController {
	
	@Autowired
	private ProductListService productListService; 
	
	private static int currentPage;
	private static int numberOfPageBlock = 10;
	private static int totalRecords = 0;
	private static int totalpage = 0;
	
	
	@GetMapping()
	public String getProductList(@RequestParam(value = "dispCapno" , defaultValue = "00010001")String dispCapno
			, @RequestParam(value="sort", defaultValue = "1") String sort
			, @RequestParam(value="brandId", defaultValue = "") String[] brandId
			, @RequestParam(value="currentPage", defaultValue = "1") int currentPage
			, @RequestParam(value="perPage", defaultValue = "24") int perPage
			, Model model) {
		
		log.info("ProductListController call.. ");
		
		// 페이지 객체 처리
		PageDTO pageDTO = null; 
	
		if ( dispCapno.length() == 4 ) {
			
			log.info("ProductListController length 4 call.. ");
		
			model.addAttribute("pageDTO", new PageDTO(currentPage, perPage, numberOfPageBlock, totalpage));
			
			return "productList.productList";
		} else if( dispCapno.length() == 8 ) { // 중분류 카테고리로 들어왔을때
			
			String largeId = dispCapno.substring(0, 4);
			String midId = dispCapno.substring(4, 8);
			
			log.info("ProductListController length 8 call.. ");
			
			// 토탈 레코드 갖고오는 작업
			totalRecords = this.productListService.getTotalRecordsSerivce(2, midId, brandId);
			model.addAttribute("totalRecords", totalRecords);
			
			// 토탈 페이지 구하는 작업
			totalpage = this.productListService.getTotalPagesService(2, perPage, midId, brandId);
			
			model.addAttribute("pageDTO", new PageDTO(currentPage, perPage, numberOfPageBlock, totalpage));
			
			// 중분류 카테고리로 대분류 카테고리 갖고는 작업
			List<CategoryLargeDTO> categoryLargeList = this.productListService.getCategoryLargeService(midId);
			model.addAttribute("categoryLargeList", categoryLargeList);
			
			// 같은 카테고리에 있는 중분류 카테고리를 갖고오는 작업
			List<CategoryMidDTO> categoryMidList = this.productListService.getCategoryMidService(largeId);
			model.addAttribute("categoryMidList", categoryMidList);
			
			// 선택한 중분류 카테고리의 소분류 카테고리를 갖고오는 작업 
			List<CategorySmallDTO> categorySmallList = this.productListService.getCategorySmallService(midId);
			model.addAttribute("categorySmallList", categorySmallList);
			
			// 브랜드 리스트 갖고오기
			List<BrandDTO> brandList = this.productListService.getBrandList(2, midId);
			model.addAttribute("brandList", brandList);
			
			// 상품 리스트 갖고오는 작업
			List<ProductContainer> productList = this.productListService.getProductListService(2, midId, sort, brandId, currentPage, perPage);
			model.addAttribute("productList", productList);
			
			return "productList.productList";
		}else if( dispCapno.length() == 12 ) {
			
			log.info("ProductListController length 12 call.. ");
			model.addAttribute("pageDTO", new PageDTO(currentPage, perPage, numberOfPageBlock, totalpage));
			
			return "productList.productList";
		}
		
		
		
		return "productList.productList";
	} // getProductList

} // class