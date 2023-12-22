package com.blackolive.app.service.exhibition;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.exhibition.BannerNProductDTO;
import com.blackolive.app.domain.exhibition.ExhibitionBannerDTO;
import com.blackolive.app.domain.exhibition.ExhibitionCategoryDTO;
import com.blackolive.app.domain.exhibition.ExhibitionImgDTO;
import com.blackolive.app.domain.exhibition.ExhibitionInfoDTO;
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
	} // getExhibitionBannerService

	// 배너와 상품이 붙어있는 배너 갖고오는 작업
	@Override
	public List<BannerNProductDTO> getExhibitionBannerNProduct(String categoryLargeId) {
		
		log.info("ExhibitionServiceImpl getExhibitionBannerService call...");
		
		try {
			return this.exhibitionMapper.getExhibitionBannerNProduct(categoryLargeId);
		} catch (SQLException e) {
			log.error("ExhibitionServiceImpl getExhibitionBannerService SQLException error...");
			e.printStackTrace();
		} catch (Exception e) {
			log.error("ExhibitionServiceImpl getExhibitionBannerService Exception error...");
			e.printStackTrace();
		} // try_catch
		return null;
	} // getExhibitionBannerNProduct

	// 기획전 정보 갖고오는 작업
	@Override
	public ExhibitionInfoDTO getExhibitionInfoService(String eventId) {
		log.info("ExhibitionServiceImpl getExhibitionInfoService call...");
		
		try {
			return this.exhibitionMapper.getExhibitionInfo(eventId);
			
		} catch (SQLException e) {
			log.error("ExhibitionServiceImpl getExhibitionInfoService Exception error...");
			e.printStackTrace();
			
		}catch (Exception e) {
			log.error("ExhibitionServiceImpl getExhibitionInfoService Exception error...");
			e.printStackTrace();
			
		} // try_catch
		return null;
	} // getExhibitionInfoService

	// 기획전 사진 갖고오는 작업
	@Override
	public List<ExhibitionImgDTO> getExhibitionImgService(String eventId) {
		log.info("ExhibitionServiceImpl getExhibitionImgService call...");
		try {
			return this.exhibitionMapper.getExhibitionImg(eventId);
		} catch (SQLException e) {
			log.error("ExhibitionServiceImpl getExhibitionBannerService Exception error...");
			e.printStackTrace();
		} catch (Exception e) {
			log.error("ExhibitionServiceImpl getExhibitionImgService Exception error...");
			e.printStackTrace();
			
		} // try_catch
		return null;
	}

	// 기획전 카테고리, 상품 갖고오는 작업
	@Override
	public List<ExhibitionCategoryDTO> getExhibitionCategoryService(String eventId) {
		log.info("ExhibitionServiceImpl getExhibitionImgService call...");
		try {
			
			return this.exhibitionMapper.getExhibitionCategory(eventId);
			
		}catch (SQLException e) {
			log.error("ExhibitionServiceImpl getExhibitionCategoryService Exception error...");
			e.printStackTrace();
		} catch (Exception e) {
			log.error("ExhibitionServiceImpl getExhibitionCategoryService Exception error...");
			e.printStackTrace();
		} // try_catch
		return null;
	}

} // class
