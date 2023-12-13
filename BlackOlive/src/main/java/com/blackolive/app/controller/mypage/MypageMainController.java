package com.blackolive.app.controller.mypage;

import java.security.Principal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.mypage.DeliveryStatusVO;
import com.blackolive.app.domain.mypage.MypageHeaderVO;
import com.blackolive.app.domain.mypage.OrderDeliveryVO;
import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.service.mypage.MypageLayoutService;
import com.blackolive.app.service.mypage.MypageMainService;
import com.blackolive.app.service.mypage.MypageMainServiceImpl;
import com.blackolive.app.service.mypage.MypageOrderDeliveryService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage/*")
public class MypageMainController {
	
	@Autowired
	private MypageLayoutService layoutService;
	
	@Autowired
	private MypageMainService mainService;
	
	@Autowired
	private MypageOrderDeliveryService orderDeliveryService;
	
	//마이페이지로 이동 컨트롤러 메서드
	//회원id -  
	@GetMapping(value = "main")
	public String mypagemain(
				//id 가져오기
				Principal principal,
				Model model
			) throws ClassNotFoundException, SQLException{
		
		//모듈 DB 데이터 가져오기
		//해더
		MypageHeaderVO headerVO = this.layoutService.mypageHeader(principal.getName());
		model.addAttribute("headerVO", headerVO);
		
		//사이드바
		int sideVO = this.layoutService.mypageSide(principal.getName());
		model.addAttribute("sideVO", sideVO);
				
		//컨텐츠 가져오기
		//주문배송현황
		DeliveryStatusVO deliveryStatusVO = this.mainService.deliveryStatus(principal.getName());
		model.addAttribute("deliveryStatusVO", deliveryStatusVO);
		//좋아요한 상품
		//1:1문의내역
		//
		
		
		
		return "mypage.mypage";//변경
		// mypage/mainpage.jsp로 이동 예정
	}
	

	//주문배송페이지 이동 컨트롤러 메서드
	@GetMapping("/orderdelivery")
	public String getorderdelivery(
				@RequestParam(name = "startDate", required = false) String startdate,
				@RequestParam(name = "endDate", required = false) String enddate,
				@RequestParam(name = "searchOrderType", required = false) String searchType,
				Principal principal,
				Model model
			) throws ClassNotFoundException, SQLException{
		
		//모듈 DB 데이터 가져오기
		//해더
		MypageHeaderVO headerVO = this.layoutService.mypageHeader(principal.getName());
		model.addAttribute("headerVO", headerVO);
		//사이드바
		int sideVO = this.layoutService.mypageSide(principal.getName());
		model.addAttribute("sideVO", sideVO);
		
		//주문배송현황
		DeliveryStatusVO deliveryStatusVO = this.mainService.deliveryStatus(principal.getName());
		model.addAttribute("deliveryStatusVO", deliveryStatusVO);
		
		String orderType = null;
		//구매 기간만 설정시	
		if ( startdate == null  ) {
			
			List<OrderDeliveryVO> orderList = this.orderDeliveryService.orderlistservice(principal.getName());
			model.addAttribute("orderList", orderList);
	
		//구매 기간 설정시	
		} else if (searchType.equals("")) {
			
			List<OrderDeliveryVO> orderList = this.orderDeliveryService.orderlistservicewithdate(principal.getName(), startdate, enddate);
			model.addAttribute("orderList", orderList);
			
		//구매 기간 + 매장 설정시	
		} else if (searchType.equals("10")) {
			orderType = "온라인";
			List<OrderDeliveryVO> orderList = this.orderDeliveryService.orderlistservicewithcondition(principal.getName(), startdate, enddate, orderType);	
			model.addAttribute("orderList", orderList);
			
			//검색 조건 없이 목록 호출	
		} else {			
			orderType = "매장";
			List<OrderDeliveryVO> orderList = this.orderDeliveryService.orderlistservicewithcondition(principal.getName(), startdate, enddate, orderType);					
			model.addAttribute("orderList", orderList);
		}

		return "mypage.orderdelivery";
	}


}
