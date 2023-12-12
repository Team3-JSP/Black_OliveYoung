package com.blackolive.app.service.productdetail;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.productdetail.ProductDetailDTO;
import com.blackolive.app.mapper.head.HeadMapper;
import com.blackolive.app.mapper.productdetail.ProductDetailMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductDetailServiceImpl implements ProductDetailService{

	private HeadMapper headMapper;
	private ProductDetailMapper productMapper;
	
	@Override
	public AllCategoryDTO getTotalCategoryService(String productDisplayId) {
		
		return this.headMapper.getTotalCategory(productDisplayId);
	}

	@Override
	public List<ProductDetailDTO> getProductService(String productDisplayId) {
		
		return this.productMapper.getProduct(productDisplayId);
	}

}
