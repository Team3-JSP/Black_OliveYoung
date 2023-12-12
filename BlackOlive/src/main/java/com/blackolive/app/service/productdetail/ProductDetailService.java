package com.blackolive.app.service.productdetail;

import java.util.List;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.productdetail.ProductDetailDTO;

public interface ProductDetailService {
	
	AllCategoryDTO getTotalCategoryService(String productDisplayId);
	
	List<ProductDetailDTO> getProductService(String productDisplayId);

}
