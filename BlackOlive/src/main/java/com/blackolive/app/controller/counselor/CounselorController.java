package com.blackolive.app.controller.counselor;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.counselor.FaqVO;
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
				Model model				
			) throws ClassNotFoundException, SQLException {
		
		if (askCategoryMinor == null) {
			askCategoryMinor = "TOP10";
		}
		
		List<FaqVO> faqVO = this.counselorService.faqlistwithMinorservice(askCategoryMinor);
		model.addAttribute("faqVO", faqVO);
		
		return "counselor.faq";
	}
	
	@PostMapping("/faq")
	public String postfaqcontroller() {
		
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
