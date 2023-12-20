package com.blackolive.app.service.exhibition;

import java.util.List;

import com.blackolive.app.domain.exhibition.BannerNProductDTO;
import com.blackolive.app.domain.exhibition.ExhibitionBannerDTO;
import com.blackolive.app.domain.exhibition.ExhibitionCategoryDTO;
import com.blackolive.app.domain.exhibition.ExhibitionImgDTO;
import com.blackolive.app.domain.exhibition.ExhibitionInfoDTO;

public interface ExhibitionService {
	
	public List<ExhibitionBannerDTO> getExhibitionBannerService(int exhibitionCategory);

	// 배너와 상품정보가 같이 있는 배너 갖고오기 getExhibitionBannerNProduct
	public List<BannerNProductDTO> getExhibitionBannerNProduct(String categoryLargeId);
	
	// 기획전 정보 갖고오는 작업 getExhibitionInfo
	public ExhibitionInfoDTO getExhibitionInfoService(String eventId);
	
	// 기획전 사진 갖고오는 작업
	public List<ExhibitionImgDTO> getExhibitionImgService(String eventId);
	
	// 기획전 카테고리, 상품 갖고오는 작업
	public List<ExhibitionCategoryDTO> getExhibitionCategoryService(String eventId);
	
	
} // interface
