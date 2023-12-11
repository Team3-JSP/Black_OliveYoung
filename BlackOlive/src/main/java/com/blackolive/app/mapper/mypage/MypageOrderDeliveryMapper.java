package com.blackolive.app.mapper.mypage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.mypage.OrderDeliveryVO;

public interface MypageOrderDeliveryMapper {
	
	//주문배송 목록 가져오기
	public List<OrderDeliveryVO> getOrderList(String userid) throws ClassNotFoundException, SQLException;
	
	//주문 기간을 조건으로 목록 가져오기
	public List<OrderDeliveryVO> getOrderListwithDate(@Param("userid") String userid,
			@Param("startdate") String startdate,
			@Param("enddate") String enddate
			) throws ClassNotFoundException, SQLException;
	
	//주문 기간 + 구매 유형을 조건으로 목록 가져오기
	public List<OrderDeliveryVO> getOrderListwithCondition(@Param("userid") String userid,
			@Param("startdate") String startdate,
			@Param("enddate") String enddate,
			@Param("searchType") String searchType
			) throws ClassNotFoundException, SQLException;
}
