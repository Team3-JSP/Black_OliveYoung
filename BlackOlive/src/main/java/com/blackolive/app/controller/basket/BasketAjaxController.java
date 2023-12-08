package com.blackolive.app.controller.basket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.basket.BasketDTO;
import com.blackolive.app.service.basket.BasketService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/basket")
public class BasketAjaxController {

	
	private BasketService basketService;
	
	@GetMapping("/update")
	public String basket(@RequestParam(value = "quickyn",defaultValue = "N")String quickyn,
			@RequestParam("productCnt") int productCnt,
            @RequestParam("productId") String productId,
            Model model) {
		String userId = "user1";
		int row = this.basketService.updateService(quickyn, userId, productCnt, productId);
		List<BasketDTO> list = this.basketService.basketService(quickyn, userId);
		model.addAttribute("list",list);
		return "/basket/basketadd";
	}
}
