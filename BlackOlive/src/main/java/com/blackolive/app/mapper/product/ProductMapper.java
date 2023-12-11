package com.blackolive.app.mapper.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.CategorySmallDTO;
import com.blackolive.app.domain.product.ProductDTO;
import com.blackolive.app.domain.productList.BrandDTO;
import com.blackolive.app.domain.productList.ProductContainer;

@Repository
public interface ProductMapper {
	
	// 중분류 카테고리를 선택할 시 상위 카테고리 갖고오기
	public List<ProductDTO> getProduct (@Param("productDisplayId") String productDisplayId);
	
	
	
	
} // interface
