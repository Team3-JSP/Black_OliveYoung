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


		
		return "mainPage.mainPage";
	} // example
	
} // class
