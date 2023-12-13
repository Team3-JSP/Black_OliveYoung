package com.blackolive.app.service.mypage;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.mypage.DeliveryStatusVO;
import com.blackolive.app.domain.mypage.ProductQnAVO;


public interface MypageMainService {
	
	//주문배송 단계별 개수 불러오기 서비스
	public DeliveryStatusVO deliveryStatus(String userid) throws ClassNotFoundException, SQLException;
	
	//상품 QnA 목록 불러오기 서비스
	public List<ProductQnAVO> productQnAservice(String userid) throws ClassNotFoundException, SQLException;
	
	//상품 QnA 날짜별 목록조회 서비스
	public List<ProductQnAVO> productQnAwithDateservice(String userid, String startdate, String enddate) throws ClassNotFoundException, SQLException;
	
}
