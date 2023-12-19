package com.blackolive.app.controller.counselor;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.blackolive.app.domain.counselor.PersonalAskVO;
import com.blackolive.app.service.counselor.CounselorPersonalAskService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Controller
@Log4j
public class MajCategoryAjaxController {

	@Autowired
	private CounselorPersonalAskService personalAskService;
	@GetMapping("/majCategory")
	public String majorCategory ( PersonalAskVO askVo, Model model ) throws ClassNotFoundException, SQLException {
		
		List<String> majList = this.personalAskService.selectmajCategory();
		model.addAttribute("majList", majList.size());
		return "/" ;
	}
}
