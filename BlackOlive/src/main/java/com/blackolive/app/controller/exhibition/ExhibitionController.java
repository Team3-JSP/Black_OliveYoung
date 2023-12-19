package com.blackolive.app.controller.exhibition;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.blackolive.app.domain.exhibition.ExhibitionBannerDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.service.exhibition.ExhibitionService;
import com.blackolive.app.service.head.HeadService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ExhibitionController {

	@Autowired
	private HeadService headService;
	
	@Autowired
	private ExhibitionService exhibitionService;
	
	@GetMapping("/store/getExhibition")
	public String getExhibition() {
		
		return "exhibition.exhibition";
	}//
	
	@GetMapping("/store/main/getExhibition")
	public String getMainExhibition(Model model) throws SQLException {
		
		log.info("ExhibitionController /store/main/getExhibition call...");
		
		
		// 상단에 있는 대분류 카테고리 갖고오는 작업 
		List<CategoryLargeDTO> largeCategoryList = this.headService.getRankingCatLargeName(null);
		model.addAttribute("largeCategoryList", largeCategoryList);
		
		// WeeklySpecial 갖고오는 작업
		List<ExhibitionBannerDTO> weeklySpecialBanner = this.exhibitionService.getExhibitionBannerService(2);
		model.addAttribute("weeklySpecialBanner", weeklySpecialBanner);
		
		return "exhibition.mainexhibition";
	}
	
} // class
