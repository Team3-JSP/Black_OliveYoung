package com.blackolive.app.controller.store;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.service.store.StoreServiceImpl;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/store")
@AllArgsConstructor
public class storeController {
	private StoreServiceImpl storeService;
	
	@GetMapping("/getStoreMain")
	public String getStoreMain(Model model) {
		List<StoreDTO> list = storeService.getStore();
		model.addAttribute("list", list);
		
		return "store.store";
	}
}
