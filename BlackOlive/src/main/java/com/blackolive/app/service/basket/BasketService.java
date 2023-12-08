package com.blackolive.app.service.basket;

import java.util.List;

import com.blackolive.app.domain.basket.BasketDTO;

public interface BasketService {

	List<BasketDTO> basketService(String quickyn, String userId);
	int updateService(String quickyn, String userId, int productCnt, String productId);
	
	int deleteService(String quickyn, String userId, String productId);
}
