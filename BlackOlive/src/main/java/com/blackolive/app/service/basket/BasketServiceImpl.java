package com.blackolive.app.service.basket;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.basket.BasketDTO;
import com.blackolive.app.mapper.basket.BasketMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BasketServiceImpl implements BasketService{

	@Autowired
	private BasketMapper basketMapper;
	
	@Override
	public List<BasketDTO> basketService(String quickyn, String userId) {
		log.info("basketService");
		List<BasketDTO> list = null;
		
		try {
			list = this.basketMapper.basket(quickyn, userId);
		} catch (Exception e) {
			System.out.println("basketService 오류");
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int updateService(String quickyn, String userId, int productCnt, String productId) {
		int row = 0;
		try {
			System.out.println("updateService 작동");
			row = this.basketMapper.update(quickyn, userId, productCnt, productId);
		} catch (Exception e) {
			System.out.println("updateService 오류");
			e.printStackTrace();
		}
		return row;
	}

	@Override
	public int deleteService(String quickyn, String userId, String productId) {
		int row = 0;
		try {
			System.out.println("deleteService 작동");
			row = this.basketMapper.delete(quickyn, userId, productId);
		} catch (Exception e) {
			System.out.println("deleteService 오류");
			e.printStackTrace();
		}
		return row;
	}

}
