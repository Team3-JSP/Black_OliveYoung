package com.blackolive.app.service.mypage;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.mypage.DeliveryStatusVO;


public interface MypageMainService {
	
	//주문배송 단계별 개수 불러오기 서비스
	public DeliveryStatusVO deliveryStatus(String userid) throws ClassNotFoundException, SQLException;
	
	//
	
}
