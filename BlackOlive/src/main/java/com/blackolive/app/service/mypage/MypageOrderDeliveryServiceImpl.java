package com.blackolive.app.service.mypage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.mypage.OrderDeliveryVO;
import com.blackolive.app.mapper.mypage.MypageOrderDeliveryMapper;

@Service
public class MypageOrderDeliveryServiceImpl implements MypageOrderDeliveryService {
	
	@Autowired
	private MypageOrderDeliveryMapper mapper;
	
	@Override
	public List<OrderDeliveryVO> orderlistservice(String userid) throws ClassNotFoundException, SQLException {

		
		return this.mapper.getOrderList(userid);
	}

	@Override
	public List<OrderDeliveryVO> orderlistservicewithdate(String userid, String startdate, String enddate)
			throws ClassNotFoundException, SQLException {
		
		return this.mapper.getOrderListwithDate(userid, startdate, enddate);
	}

	@Override
	public List<OrderDeliveryVO> orderlistservicewithcondition(String userid, String startdate, String enddate,
			String searchType) throws ClassNotFoundException, SQLException {
		
		return this.mapper.getOrderListwithCondition(userid, startdate, enddate, searchType);
	}

}
