package com.blackolive.app.controller.counselor;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.counselor.Criteria;
import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.domain.counselor.PageDTO;
import com.blackolive.app.service.counselor.CounselorService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value = "/counselor/*")
public class CounselorController {
	
	@Autowired
	private CounselorService counselorService;
	
	@GetMapping("/faq")
	public String getfaqcontroller(
				@RequestParam(name = "askCategoryMinor", required = false) String askCategoryMinor,
				@RequestParam(name = "askCategoryMajor", required = false) String askCategoryMajor,
				Model model,
				Criteria criteria
			) throws ClassNotFoundException, SQLException {
		int total = 0;
		if (askCategoryMinor == null && askCategoryMajor == null) {
			askCategoryMinor = "TOP10";
			askCategoryMajor = "TOP10";
			criteria.setKeyword("TOP10");
			List<FaqVO> faqVO = this.counselorService.faqlistwithMinorservice(askCategoryMajor, askCategoryMinor, criteria);
			model.addAttribute("faqVO", faqVO);
			total = this.counselorService.getTotalservice(criteria);
			
		} else if (askCategoryMinor == null || askCategoryMinor == "") {
			List<FaqVO> faqVO = this.counselorService.faqlistwithMajorservice(askCategoryMajor, criteria);
			model.addAttribute("faqVO", faqVO);
			total = this.counselorService.getMajorTagTotalservice(askCategoryMajor);
							
		} else {
			List<FaqVO> faqVO = this.counselorService.faqlistwithMinorservice(askCategoryMajor, askCategoryMinor, criteria);
			model.addAttribute("faqVO", faqVO);
			total = this.counselorService.getMinorTagTotalservice(askCategoryMajor, askCategoryMinor);
			
		}
		log.info(">> model adding..");
		model.addAttribute("askCategoryMajor", askCategoryMajor);
		model.addAttribute("askCategoryMinor", askCategoryMinor);
		
		model.addAttribute("pageMaker", new PageDTO(criteria, total));
		
		log.info(">> model add complete");
		return "counselor.faq";
	}
	
	@GetMapping("/faqlist")
	public String postfaqcontroller(
				Criteria criteria,
				Model model				
			) throws ClassNotFoundException, SQLException {
		log.info(">> faqlist get ");
		model.addAttribute("faqVO", this.counselorService.faqlistsearchwithpagingservice(criteria));
		
		int total = this.counselorService.getTotalservice(criteria);
		
		model.addAttribute("pageMaker", new PageDTO(criteria, total));
		
		return "counselor.faq";
	}
	
	@GetMapping("/personalAsk")
	public String personalAskcontroller() {
		
		return "counselor.personalAsk";
	}
	
	@GetMapping("/notice")
	public String noticecontroller() {
		
		return "counselor.notice";
	}
	
	
}
