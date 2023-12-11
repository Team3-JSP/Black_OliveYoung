package com.blackolive.app.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.product.ProductDTO;
import com.blackolive.app.mapper.head.HeadMapper;
import com.blackolive.app.mapper.product.ProductMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{

	private HeadMapper headMapper;
	private ProductMapper productMapper;
	
	@Override
	public AllCategoryDTO getTotalCategoryService(String productDisplayId) {
		
		return this.headMapper.getTotalCategory(productDisplayId);
	}

	@Override
	public List<ProductDTO> getProductService(String productDisplayId) {
		
		return this.productMapper.getProduct(productDisplayId);
	}

}
