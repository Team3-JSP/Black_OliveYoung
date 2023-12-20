package com.blackolive.app.controller.search;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.PageDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.service.search.SearchService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class SearchController {

	private SearchService searchService;
	
	private static int currentPage;
	private static int numberOfPageBlock = 10;
	private static int totalRecords = 0;
	private static int totalpage = 0;
	
	@GetMapping("/search")
	public String searchProduct(@RequestParam(value = "searchWord")String searchWord
			, @RequestParam(value="sort", defaultValue = "1") String sort
			, @RequestParam(value="brandId", defaultValue = "") String[] brandId
			, @RequestParam(value="categorySmallId",defaultValue="") String categorySmallId
			, @RequestParam(value="currentPage", defaultValue = "1") int currentPage
			, @RequestParam(value="perPage", defaultValue = "24") int perPage
			, @RequestParam(value = "minPrice", defaultValue = "0")int minPrice
			, @RequestParam(value = "maxPrice", defaultValue = "9999999")int maxPrice
			, Model model
			, Principal principal) {
		
		String userId ="0";
		if (principal != null) {
			userId = principal.getName();
		} // if
		// 페이지 객체 처리
		PageDTO pageDTO = null;
		
		totalRecords = this.searchService.searchTotalRecordsService(searchWord, categorySmallId, brandId, minPrice, maxPrice);
		model.addAttribute("totalRecords", totalRecords);
		totalpage = this.searchService.searchTotalPagesService(searchWord, categorySmallId, perPage, brandId, minPrice, maxPrice);
		model.addAttribute("pageDTO", new PageDTO(currentPage, perPage, numberOfPageBlock, totalpage));
		
		List<CategorySmallDTO> categorySmallList = this.searchService.searchCategorySmallService(searchWord);
		model.addAttribute("categorySmallList", categorySmallList);
		
		List<BrandDTO> brandList = this.searchService.searchBrandListService(searchWord, categorySmallId);
		model.addAttribute("brandList", brandList);
		
		List<ProductContainer> productList = this.searchService.searchProductListService(searchWord, categorySmallId, sort, brandId, currentPage, perPage, userId, minPrice, maxPrice);
		model.addAttribute("productList", productList);
		
		model.addAttribute("searchWord", searchWord);
		
		return "search.search";
	}
}
