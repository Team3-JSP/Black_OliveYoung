package com.blackolive.app.controller.profile;

import java.security.Principal;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/profile/*")
public class ProfileController {
		
	@GetMapping("/myprofile")
	public String getprofilecontroller(
			Principal principal,
			Model model
			) throws ClassNotFoundException, SQLException{
		//회원 id 가져오기
		String userid = principal.getName();
		
		
		
		
		return "profile.myprofile";
	}
	
	//프로필 수정
	
}
