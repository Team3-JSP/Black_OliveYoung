package com.blackolive.app.service.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.brandPage.BrandPageDTO;
import com.blackolive.app.mapper.brandPage.BrandPageMapper;

@Service
public class BrandPageServiceImpl implements BrandPageService  {

	@Autowired
	private BrandPageMapper brandpageMapper;

	@Override
	public BrandPageDTO getBrands(String brandId) throws ClassNotFoundException, SQLException {
		return brandpageMapper.getBrands(brandId);
	}

	@Override
	public List<BrandPageDTO> getSortBrands(String brandId, String sort, String dispcatno)
			throws ClassNotFoundException, SQLException {
		return brandpageMapper.getSortBrands(brandId, dispcatno, sort);
	}

	@Override
	public List<BrandPageDTO> getsellProduct(String brandId, String categoryId)
			throws ClassNotFoundException, SQLException {
		return brandpageMapper.getsellProduct(brandId, categoryId);
	}

	@Override
	public List<BrandPageDTO> getReviews(String prductDisplyId) throws ClassNotFoundException, SQLException {
		return brandpageMapper.getReviews(prductDisplyId);
	}



}
