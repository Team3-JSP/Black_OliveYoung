package com.blackolive.app.controller.signin;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.service.signin.JoinService;

import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping("/join/*")
public class JoinController {
	
	@Autowired
	private JoinService joinService;
	
	@GetMapping("/joinCheck")
	public String joinCheck() throws ClassNotFoundException, SQLException{
		return "join.joinCheck";
	}
	// 회원가입여부 체크_POST
		@PostMapping("/joinCheck")
		public String joinCheck(@RequestParam("userName") String userName
							, @RequestParam("userTel") String userTel
							, @RequestParam("userBirth") String userBirth
							, Model model) throws ClassNotFoundException, SQLException {
			log.info("joinCheck_POST...");
			
			String userInfo= this.joinService.getJoinCheck(userTel);
			
			model.addAttribute("userName", userName);
			model.addAttribute("userTel", userTel);
			model.addAttribute("userBirth", userBirth);
			
		
			// **경로확인하기
			if(userInfo == null ) {
				return "join.verify";
			}else {
				return "join.join_already";
			}//if
		}
		// 가입된 회원 이동경로 
		@GetMapping("/join_already.htm")
		public String alreadyUser (OliveUserDTO userDto) throws ClassNotFoundException, SQLException {
			log.info("alreadyUser_GET...");
			userDto = this.joinService.getAlreadyUser(userDto);
			return "../logon/logOn";
		}

		// 회원가입 인증
		@GetMapping("/verify")
		public String verify() throws SQLException, ClassNotFoundException{
			log.info("verify_GET...");
			return "join.verify_phfirst";
		}
		
//		//회원가입 휴대폰인증1
//	@GetMapping("/verify_phfirst")
//		public String verify_phfirst() throws SQLException, ClassNotFoundException{
//			log.info("verify_phfirst_GET...");
//		return "join.verify_phfirst";
//		}
}
