package com.blackolive.app.mapper.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.controller.brandPage.BrandDTO;
import com.blackolive.app.service.brandPage.BrandPageService;

@Service
public class BrandPageServiceImpl implements BrandPageService  {

	@Autowired
	private BrandPageMapper brandpageMapper;
	
	@Override
	public BrandDTO getBrands(String brandId) throws ClassNotFoundException, SQLException {
		 return brandpageMapper.getBrands(brandId);
	}

	@Override
	public List<BrandDTO> getSortBrands(String brandId, String sort, String dispcatno)
			throws ClassNotFoundException, SQLException {
		return brandpageMapper.getSortBrands(brandId, dispcatno, sort);
	}

	@Override
	public List<BrandDTO> getsellProduct(String brandId, String categoryId)
			throws ClassNotFoundException, SQLException {
		 return brandpageMapper.getsellProduct(brandId, categoryId);
	}

	@Override
	public List<BrandDTO> getReviews() throws ClassNotFoundException, SQLException {
		return brandpageMapper.getReviews();
	}


}
