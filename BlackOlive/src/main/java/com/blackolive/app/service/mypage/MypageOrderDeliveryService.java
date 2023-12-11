package com.blackolive.app.service.mypage;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.mypage.OrderDeliveryVO;

public interface MypageOrderDeliveryService {
	
	//주문배송 목록 가져오기 서비스
	public List<OrderDeliveryVO> orderlistservice(String userid) throws ClassNotFoundException, SQLException;
	
	//주문배송 주문기간 조건
	public List<OrderDeliveryVO> orderlistservicewithdate(String userid, String startdate, String enddate) throws ClassNotFoundException, SQLException;
		
	//주문배송 주문기간 + 주문유형 조건
	public List<OrderDeliveryVO> orderlistservicewithcondition(String userid, String startdate, String enddate, String searchType) throws ClassNotFoundException, SQLException;
	
}	
