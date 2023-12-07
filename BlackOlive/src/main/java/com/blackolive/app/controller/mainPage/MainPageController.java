package com.blackolive.app.controller.mainPage;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.blackolive.app.domain.mainPage.ExampleDTO1;
import com.blackolive.app.mapper.mainPage.MainPageMapper;

@Controller
public class MainPageController {

	@Autowired
	private MainPageMapper mainPageMapper;
	
	@GetMapping(value ="/")
	public String example() throws SQLException {
		
		ExampleDTO1 dto1 = this.mainPageMapper.getExample();
		System.out.println(dto1);
		
		
		return "mainPage.mainPage";
	} // example
	
} // class
