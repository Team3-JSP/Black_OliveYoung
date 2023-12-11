package com.blackolive.app.mapper.mypage;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.mypage.OrderDeliveryVO;

public interface MypageOrderDeliveryMapper {
	
	//주문배송 처음 가져오기
	public List<OrderDeliveryVO> getOrderList(String userid) throws ClassNotFoundException, SQLException;
	
}
