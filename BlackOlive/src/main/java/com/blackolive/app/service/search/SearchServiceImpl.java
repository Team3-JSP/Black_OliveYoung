package com.blackolive.app.service.search;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.mapper.search.SearchMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class SearchServiceImpl implements SearchService {

	private SearchMapper searchMapper;
	
	@Override
	public List<ProductContainer> searchProductListService(String searchWord, String categorySmallId, String sort,
			String[] brandId, int currentPage, int perPage, String userId, int minPrice,
			int maxPrice) {
		
		int begin = (currentPage -1) * perPage + 1;
		int end = begin + perPage -1 ;
		if (userId == null) {
			userId ="0";
		}//if
		
		return this.searchMapper.searchProductList(searchWord, categorySmallId, sort, brandId, currentPage, perPage, begin, end, userId, minPrice, maxPrice);
	}

	@Override
	public List<CategorySmallDTO> searchCategorySmallService(String searchWord) {
		// TODO Auto-generated method stub
		return this.searchMapper.searchCategorySmall(searchWord);
	}

	@Override
	public List<BrandDTO> searchBrandListService(String searchWord, String categorySmallId) {
		// TODO Auto-generated method stub
		return this.searchMapper.searchBrandList(searchWord, categorySmallId);
	}

	@Override
	public int searchTotalRecordsService(String searchWord, String categorySmallId, String[] brandId, int minPrice,
			int maxPrice) {
		// TODO Auto-generated method stub
		return this.searchMapper.searchTotalRecords(searchWord, categorySmallId, brandId, minPrice, maxPrice);
	}

	@Override
	public int searchTotalPagesService(String searchWord, String categorySmallId, int perPage, String[] brandId,
			int minPrice, int maxPrice) {
		// TODO Auto-generated method stub
		return this.searchMapper.searchTotalPages(searchWord, categorySmallId, perPage, brandId, minPrice, maxPrice);
	}

}
