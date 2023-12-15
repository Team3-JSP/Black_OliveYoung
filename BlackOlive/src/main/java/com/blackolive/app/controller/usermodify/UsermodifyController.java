package com.blackolive.app.controller.usermodify;

import java.net.http.HttpRequest;
import java.security.Principal;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.service.usermodify.UsermodifyService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/usermodify/*")
public class UsermodifyController {
	@Autowired
	private UsermodifyService usermodifyService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	//비밀번호 변경_GET
	@GetMapping("/pwd_modification")
	public String pwdModify( Principal principal, Model model) throws ClassNotFoundException, SQLException {
		log.info( "pwdModify_GET..." +principal.getName());
		String userId = principal.getName();
		OliveUserDTO userDto = this.usermodifyService.getUser(userId);
		model.addAttribute("userDto", userDto);
		//passwordEncoder.matches(userDto.getUserPassword(), );
		return "usermodify.pwd_modification";
	}

	//비밀번호 변경 완료_POST
	@PostMapping("/pwd_modification")
	public String pwdModifyOk(@RequestParam("new_pwd") String newPassword
										, @RequestParam("userDto") OliveUserDTO userDto
										, Model model) throws ClassNotFoundException, SQLException {
		log.info("pwdModifyOk_POST...");
        userDto = this.usermodifyService.pwdModify(passwordEncoder.encode(newPassword));
        
        if (userDto == null) {
            log.error("User not found for userId: " + userDto);
            return "error";
        } else {
		return "usermodify.pwd_modification_ok";
        }
	}
	
	//회원정보수정-비밀번호체크_GET
	@GetMapping("/pwdCheck")
	public String pwdCheck( Principal principal, Model model) throws ClassNotFoundException, SQLException {
		log.info( "pwdCheck_GET..." +principal.getName());
		String userId = principal.getName();
		OliveUserDTO userDto = this.usermodifyService.getUser(userId);
		model.addAttribute("userDto", userDto);
		//passwordEncoder.matches(userDto.getUserPassword(), );
		return "usermodify.pwdCheck";
	}
	
	//회원정보수정-비밀번호체크_POST
	@PostMapping("/pwdCheck")
	public String pwdCheckOk( Principal principal, Model model) throws ClassNotFoundException, SQLException {
		log.info( ">>>>>pwdCheckOk_POST..." +principal.getName());
		String userId = principal.getName();
		OliveUserDTO userDto = this.usermodifyService.getUser(userId);
		model.addAttribute("userDto", userDto);
		return "usermodify.info_modification";
	}

}
