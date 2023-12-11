package com.blackolive.app.controller.signin;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		log.info("joinCheck_GET...");
		return "join.joinCheck";
	}
	
	// 회원가입여부 체크_POST
	@PostMapping("/joinCheck")
	public String joinCheck( @RequestParam("userTel") String userTel
			, @RequestParam("userName") String userName
			, Model model) throws ClassNotFoundException, SQLException {
		log.info("joinCheck_POST...");

		OliveUserDTO userDto = this.joinService.getJoinCheck(userTel);

		if(userDto == null ) {
			return "join.verify";
		}else {
			model.addAttribute("userDto", userDto);
			return "join.join_already";
		}//if
	}		
	
	// 가입된 회원 이동경로 
	@GetMapping("/join_already")
	public String alreadyUser (OliveUserDTO userDto) throws ClassNotFoundException, SQLException {
		log.info("alreadyUser_GET...");
		userDto = this.joinService.getAlreadyUser(userDto);
		return "../logon/logOn";
	}

	// 회원가입 휴대폰인증1
	@GetMapping("/verify_phfirst")
	public String verify() throws SQLException, ClassNotFoundException{
		log.info("verify_phfirst_GET...");
		return "join.verify_phfirst";
	}

	// 회원가입 휴대폰인증2 get 
	@GetMapping("/verify_phlast")
	public String verify_phlast() throws SQLException, ClassNotFoundException{
		log.info("verify_phlast_GET...");
		return "join.verify_phlast";
	}
	// 회원가입 휴대폰인증 완료
	@PostMapping("/agreement")
	public String verifyOk( @RequestParam("userName") String userName
							, @RequestParam("userTel") String userTel
							, @RequestParam("userBirth") String userBirth
							, @RequestParam("userGender") String userGender
							, Model model) throws SQLException, ClassNotFoundException{
		log.info("verifyOk_POST..." + userName + userTel + userBirth+ userGender);

		model.addAttribute("userName", userName);
		model.addAttribute("userTel", userTel);
		model.addAttribute("userBirth", userBirth);
		model.addAttribute("userGender", userGender);
		
		return "join.agreement";
	}
	// 회원가입-약관동의
	@PostMapping("/join")
	public String agreement(@RequestParam("userName") String userName
			, @RequestParam("userTel") String userTel
			, @RequestParam("userBirth") String userBirth
			, @RequestParam("userGender") String userGender
			, Model model) throws SQLException, ClassNotFoundException{
		log.info("agreement_POST..." + userName + userTel + userBirth+ userGender);
		model.addAttribute("userName", userName);
		model.addAttribute("userTel", userTel);
		model.addAttribute("userBirth", userBirth);
		model.addAttribute("userGender", userGender);
		return "join.join";
	}
//	
//	@Autowired
//	private PasswordEncoder passwordEncoder;
//	
//	// 회원가입
//	@PostMapping("/join")
//	public String join(OliveUserDTO userDto) throws ClassNotFoundException, SQLException {
//		String userPassword = userDto.getUserPassword();
//		userDto.setUserPassword( this.passwordEncoder.encode(userPassword) );
//		this.joinService.insertUser(userDto);
//		return "../auth.login";
//	}
}
