package com.blackolive.app.controller.mainPage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.EventDTO;
import com.blackolive.app.domain.head.GiftCardDTO;
import com.blackolive.app.domain.head.MsgCardDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.mapper.mainPage.MainPageMapper;
import com.blackolive.app.service.head.HeadServiceImpl;

@Controller
public class MainPageController {

	@Autowired
	private MainPageMapper mainPageMapper;
	
	@Autowired
	private HeadServiceImpl headServiceImpl;
	
	@GetMapping(value ="/")
	public String example() throws SQLException {


		
		return "mainPage.mainPage";
	} // example
	
	@GetMapping("/store/getMembership")
	public String getMembership() {
		return "mainPage.membership";
	}
	
	@GetMapping("/store/getCoupon")
	public String getCoupon() {
		return "mainPage.coupon";
	}
	
	@GetMapping("/store/getEvent")
	public String getEvent(
			@RequestParam(value = "click", defaultValue = "모든회원") String click
			, Model model) throws SQLException {
		List<EventDTO> list = this.headServiceImpl.getEventList(click);
		
		model.addAttribute("click", click);
		model.addAttribute("list", list);
		return "mainPage.event";
	}
	
	@GetMapping("/store/getEventDetail")
	public String getEventDetail(String eventId, Model model) throws SQLException {
		EventDTO dto =  this.headServiceImpl.getEventDetail(eventId);
		
		model.addAttribute("dto", dto);
		
		return "mainPage.eventDetail";
	}
	
	@GetMapping("/store/getGiftCard")
	public String getGiftCard(Model model) throws SQLException {
		List<GiftCardDTO> list = this.headServiceImpl.getGiftCardList();
		model.addAttribute("list", list);
		
		return "mainPage.giftCard";
	}
	
	@GetMapping("/store/getGiftCardForm")
	public String getGiftCardForm(String click, String giftCardId, Model model) throws SQLException {
		GiftCardDTO dto = this.headServiceImpl.getGiftCardDetail(giftCardId);
		List<MsgCardDTO> list = this.headServiceImpl.getMsgcardList();
		
		model.addAttribute("click", click);
		model.addAttribute("list", list);
		model.addAttribute("dto", dto);
		
		return "mainPage.giftCardForm";
	}
	
	@GetMapping("/store/getRanking")
	public String getRanking(
			String click
			, @RequestParam(value = "type", defaultValue = "판매 랭킹") String type
			, String categoryMidId
			, Model model) throws SQLException {
		List<CategoryMidDTO> categoryMidList = this.headServiceImpl.getRankingCatMidName();
		List<ProductContainer> productList = this.headServiceImpl.getSaleRankingProduct(categoryMidId);
		model.addAttribute("click", click);
		model.addAttribute("type", type);
		model.addAttribute("categoryMidList", categoryMidList);
		model.addAttribute("productList", productList);
		
		return "mainPage.ranking";
	}
	
	
} // class
