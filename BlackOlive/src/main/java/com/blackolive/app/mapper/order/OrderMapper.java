package com.blackolive.app.mapper.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.order.CouponDTO;
import com.blackolive.app.domain.order.DeliveryDTO;
import com.blackolive.app.domain.order.OrderProductContainer;

public interface OrderMapper {
	// 나의 배송지 리스트
	List<DeliveryDTO> selectUserDelivery(@Param("userId") String userId);
	
	// 나의 기본 배송지 얻어오기
	DeliveryDTO selectOneUserDelivery(@Param("userId") String userId);

	// 해당 배송지 얻어오기
	DeliveryDTO selectOneDelivery(@Param("deliveryId") String deliveryId);

	// 나의 쿠폰 리스트 얻어오기
	List<CouponDTO> selectUserCoupon(@Param("userId") String userId);

	// 주문한 상품 정보 얻기
	List<OrderProductContainer> selectOrderProducts(@Param("orderProducts") String[] orderProducts);
}
