package com.blackolive.app.service.exhibition;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.exhibition.ExhibitionBannerDTO;
import com.blackolive.app.mapper.exhibition.ExhibitionMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ExhibitionServiceImpl implements ExhibitionService{

	@Autowired
	private ExhibitionMapper exhibitionMapper;
	
	
	// 배너 정보 갖고오는 작업
	@Override
	public List<ExhibitionBannerDTO> getExhibitionBannerService(int exhibitionCategory) {
		
		log.info("ExhibitionServiceImpl getExhibitionBannerService call...");
		
		try {
			return this.exhibitionMapper.getExhibitionBanner(exhibitionCategory);
		} catch (SQLException e) {
			log.error("ExhibitionServiceImpl getExhibitionBannerService error...");
			e.printStackTrace();
		} // try catch
		
		return null;
	}

}
