package com.blackolive.app.controller.usermodify;

import java.security.Principal;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.service.usermodify.UsermodifyService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class PasswordCheckAjaxController {
	@Autowired
	private UsermodifyService usermodifyService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@PostMapping("/userPwdCheck")
	public int pwdCheck( Principal principal, String inputPwd ) throws ClassNotFoundException, SQLException{
		log.info(">>userPasswordCheck_POST_Ajax....." );
		//로그인한 회원 정보 불러오기
		String userId = principal.getName();
		OliveUserDTO userDto = this.usermodifyService.getUser(userId);
		String userPassword = this.usermodifyService.pwdCheck(userDto.getUserPassword());
		
		log.info("비밀번호 : " +userPassword );
		log.info("입력값 : " + inputPwd);
		if (userPassword == null || !passwordEncoder.matches(userPassword, inputPwd ) ) {
			return 0;
		}
		return 1;
		
	}
}
