package com.blackolive.app.controller.counselor;

import java.security.Principal;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blackolive.app.domain.mypage.MypageHeaderVO;
import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.service.mypage.MypageLayoutService;
import com.blackolive.app.service.mypage.MypageListService;

import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping(value = "/counselor/*")
public class CounselorPersonalAskController {

	// service mapping
	
}
