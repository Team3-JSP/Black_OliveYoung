package com.blackolive.app.controller.mainPage;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.EventDTO;
import com.blackolive.app.domain.head.GiftCardDTO;
import com.blackolive.app.domain.head.MsgCardDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.domain.review.ReviewDTO;
import com.blackolive.app.domain.review.ReviewDetailDTO;
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
			, String categoryLargeId
			, Model model) throws SQLException {
		List<CategoryLargeDTO> categoryLargeList = this.headServiceImpl.getRankingCatLargeName(type);
		List<ProductContainer> productList = null; 
		List<ReviewDTO> reviewList = null; 
		
		if(type.equals("판매 랭킹")) {
			productList = this.headServiceImpl.getSaleRankingProduct(categoryLargeId);
			model.addAttribute("productList", productList);
		} else {
			if(categoryLargeId == null || categoryLargeId.isEmpty()) {
				categoryLargeId = "0001";				
			}
			reviewList = this.headServiceImpl.getReviewBest(categoryLargeId);
			model.addAttribute("reviewList", reviewList);
		}
		
		System.out.println("reviewList : " + reviewList);
		
		model.addAttribute("click", click);
		model.addAttribute("type", type);
		model.addAttribute("categoryLargeList", categoryLargeList);
		
		
		return "mainPage.ranking";
	}
	
	@GetMapping("/store/getReviewDetail")
	@ResponseBody
	public ResponseEntity<ReviewDetailDTO> getReviewDetail(String reviewId) throws SQLException {
		return new ResponseEntity<>(this.headServiceImpl.getReviewDetail(reviewId), HttpStatus.OK);
	}
	
	@PostMapping("/store/udpReviewLike")
	@ResponseBody
	public ResponseEntity<String> udpReviewLike(String reviewId, int likePlus, Principal principal) throws SQLException {
		if(principal == null)
			return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
			
		return this.headServiceImpl.udpReviewList(reviewId, likePlus) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
} // class
