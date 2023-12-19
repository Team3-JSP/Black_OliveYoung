package com.blackolive.app.mapper.exhibition;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.exhibition.ExhibitionBannerDTO;

public interface ExhibitionMapper {

	// 배너정보 갖고오는 작업 getExhibitionBanner
	public List<ExhibitionBannerDTO> getExhibitionBanner(@Param("exhibitionCategory") int exhibitionCategory) throws SQLException;
	
	
	
} // interface
