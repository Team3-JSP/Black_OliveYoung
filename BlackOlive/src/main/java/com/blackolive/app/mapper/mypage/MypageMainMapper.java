package com.blackolive.app.mapper.mypage;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.mypage.DeliveryStatusVO;
import com.blackolive.app.domain.mypage.MypageHeaderVO;



public interface MypageMainMapper {
	
	//마이페이지 해더 정보 가져오기
	public MypageHeaderVO getHeader(String userid) throws ClassNotFoundException, SQLException;
	
	//마이페이지 사이드 정보(리뷰수) 가져오기
	public int getSide(String userid) throws ClassNotFoundException, SQLException;
	
	//마이페이지 주문배송 개수 가져오기
	public DeliveryStatusVO getDeliveryStatus(String userid) throws ClassNotFoundException, SQLException;
}
