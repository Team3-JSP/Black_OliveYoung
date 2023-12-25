package com.blackolive.app.service.order;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.controller.order.OrderHandler;
import com.blackolive.app.domain.order.CouponDTO;
import com.blackolive.app.domain.order.DeliveryDTO;
import com.blackolive.app.domain.order.OrderProductContainer;
import com.blackolive.app.mapper.order.OrderMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {
	private OrderMapper orderMapper;

	@Override
	public List<DeliveryDTO> getUserDelivery(String userId) {
		return this.orderMapper.selectUserDelivery(userId);
	}

	@Override
	public DeliveryDTO getDefaultUserDelivery(String userId) {
		return this.orderMapper.selectOneUserDelivery(userId);
	}

	@Override
	public DeliveryDTO getDelivery(String deliveryId) {
		return this.orderMapper.selectOneDelivery(deliveryId);
	}

	@Override
	public List<CouponDTO> getCoupon(String userId) {
		return this.orderMapper.selectUserCoupon(userId);
	}

	@Override
	public List<OrderProductContainer> getOrderProducts(String[] orderProducts) {
		return this.orderMapper.selectOrderProducts(orderProducts);
	}

	@Override
	public int orderService(OrderHandler orderHandler) {
		/*
		 * for (int i = 0; i < product_id.length; i++) { temp =
		 * product_id[i].split("-"); cat_m_id = dao.selectCatMID(conn, temp[0]);
		 * dao.updateProStuck(conn, temp[0], Integer.parseInt(temp[1]));
		 * if(map.get("click").equals("장바구니")) { dao.deleteCart(conn,
		 * (String)map.get("user_id"), temp[0]); } dao.insertOrderProduct(conn, temp[0],
		 * Integer.parseInt(temp[1]), cat_m_id); }
		 */
		
		return 1;
	}
	
	
}
