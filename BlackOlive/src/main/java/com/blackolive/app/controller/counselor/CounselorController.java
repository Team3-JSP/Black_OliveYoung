package com.blackolive.app.controller.counselor;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.counselor.Criteria;
import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.domain.counselor.PageDTO;
import com.blackolive.app.domain.counselor.PersonalAskVO;
import com.blackolive.app.domain.mypage.OrderVO;
import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.service.counselor.PersonalAskService;
import com.blackolive.app.service.mypage.MypageOrderDeliveryService;
import com.blackolive.app.service.counselor.CounselorService;
import com.blackolive.app.service.usermodify.UsermodifyService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value = "/counselor/*")
public class CounselorController {
	
	@Autowired
	private CounselorService counselorService;
	
	@Autowired
	private UsermodifyService usermodifyService;
	
	@Autowired
	private PersonalAskService personalAskService;
	
	@Autowired
	private MypageOrderDeliveryService orderDeliveryService;
	
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
	
	// 1:1문의하기 목록 이동
	@GetMapping("/personalAskList")
	public String personalAskListcontroller( Principal principal ) throws ClassNotFoundException, SQLException {
		log.info("personalAskListcontroller_GET....");
		String userId = principal.getName();
		return "counselor.personalAskList";
	}
	
	// 1:1문의하기 이동
	@GetMapping("/personalAsk")
	public String personalAskcontroller( Principal principal, Model model, String userId,
						@RequestParam(name = "startDate", required = false) String startdate,
						@RequestParam(name = "endDate", required = false) String enddate,
						@RequestParam(name = "searchOrderType", required = false) String searchType
													) throws ClassNotFoundException, SQLException {
		log.info("personalAskcontroller_GET....");
		userId = principal.getName();
		OliveUserDTO userDto = this.usermodifyService.getUser(userId);

		String orderType = null;
		if ( startdate == null  ) {
			List<OrderVO> orderList = this.orderDeliveryService.orderlistservice(userId);
			model.addAttribute("orderList", orderList);
	
		//구매 기간 설정시	
		} else if (searchType.equals("")) {		
			List<OrderVO> orderList = this.orderDeliveryService.orderlistservicewithdate(userId, startdate, enddate);
			model.addAttribute("orderList", orderList);
		}	
		
		
		List<PersonalAskVO> myOrderlist = this.personalAskService.selectOrderList(userId);
		model.addAttribute("userDto", userDto);
		model.addAttribute("myOrderlist", myOrderlist);

		return "counselor.personalAsk";
	}
	
	// 1:1문의 등록
	@PostMapping("/personalAsk")
	public String personalAskUpload( Principal principal, Model model, String userId, PersonalAskVO askVo) throws ClassNotFoundException, SQLException {
		log.info("personalAskUpload_POST....");
		askVo.setUserId(principal.getName());
		this.personalAskService.insertPersonalAsk(askVo);
		
		return "counselor.personalAskList";
	}
	

	@GetMapping("/notice")
	public String noticecontroller() {
		
		return "counselor.notice";
	}
	
	
}
