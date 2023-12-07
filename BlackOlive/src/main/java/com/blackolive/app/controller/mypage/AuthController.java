package com.blackolive.app.controller.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value = "/auth/*")
public class AuthController {
	
	@GetMapping("/login")
	public String login() throws Exception{
		
		return "auth.login";
	}
	
	
}
