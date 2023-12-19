package com.blackolive.app.service.exhibition;

import java.util.List;

import com.blackolive.app.domain.exhibition.ExhibitionBannerDTO;

public interface ExhibitionService {
	
	public List<ExhibitionBannerDTO> getExhibitionBannerService(int exhibitionCategory);

}
