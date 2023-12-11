package com.blackolive.app.service.mypage;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.mypage.OrderDeliveryVO;

public interface MypageOrderDeliveryService {
	
	//주문배송 목록 가져오기 서비스
	public List<OrderDeliveryVO> orderlistservice(String userid) throws ClassNotFoundException, SQLException;
	
}	
