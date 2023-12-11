package com.blackolive.app.controller.mainPage;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.blackolive.app.domain.head.ExampleDTO;
import com.blackolive.app.domain.mainPage.ExampleDTO1;
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
		
//		ExampleDTO1 dto1 = this.mainPageMapper.getExample();
		
		ExampleDTO dto2 = this.headServiceImpl.getExample();
		System.out.println(dto2);
		
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
	
} // class
