package com.blackolive.app.mapper.basket;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.basket.BasketDTO;

public interface BasketMapper {
	//장바구니 불러오기
	List<BasketDTO> basket(@Param("quickyn") String quickyn, @Param("userId") String userId);
	//장바구니 수량 변경
	int update(@Param("quickyn") String quickyn, @Param("userId")String userId,@Param("productCnt")int productCnt,@Param("productId")String productId);
	// 장바구니 삭제
	int delete(@Param("quickyn") String quickyn, @Param("userId")String userId,@Param("productId")String productId);
}
