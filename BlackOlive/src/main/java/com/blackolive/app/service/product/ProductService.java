package com.blackolive.app.service.product;

import java.util.List;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.product.ProductDTO;

public interface ProductService {
	
	AllCategoryDTO getTotalCategoryService(String productDisplayId);
	
	List<ProductDTO> getProductService(String productDisplayId);

}
