package com.blackolive.app.controller.basket;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.basket.BasketDTO;
import com.blackolive.app.domain.mypage.MypageHeaderVO;
import com.blackolive.app.service.basket.BasketService;
import com.blackolive.app.service.mypage.MypageLayoutService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/basket")
public class BasketAjaxController {

	
	private BasketService basketService;
	private MypageLayoutService layoutService;
	
	@GetMapping("/update")
	public String basket(@RequestParam(value = "quickyn",defaultValue = "N")String quickyn,
			@RequestParam("productCnt") int productCnt,
            @RequestParam("productId") String productId, Principal principal,
            Model model) throws ClassNotFoundException, SQLException {
		String userId = principal.getName();
		int row = this.basketService.updateService(quickyn, userId, productCnt, productId);
		MypageHeaderVO headerVO = this.layoutService.mypageHeader(userId);
		model.addAttribute("headerVO", headerVO);
		List<BasketDTO> list = this.basketService.basketService(quickyn, userId);
		model.addAttribute("list",list);
		return "/basket/basketadd";
	}
	
	
}
