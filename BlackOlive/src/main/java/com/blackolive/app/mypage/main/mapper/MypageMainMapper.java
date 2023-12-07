package com.blackolive.app.mypage.main.mapper;

import java.sql.SQLException;

import com.blackolive.app.mypage.main.domain.MypageHeaderVO;



public interface MypageMainMapper {
	
	//마이페이지 해더 정보 가져오기
	public MypageHeaderVO getHeader(String id) throws ClassNotFoundException, SQLException;
	
	//마이페이지 사이드 정보(리뷰수) 가져오기
	public int getSide(String id) throws ClassNotFoundException, SQLException;
	
	
}
