package com.blackolive.app.mapper.mypage;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.mypage.PersonalAskVO;
import com.blackolive.app.domain.signin.OliveUserDTO;

public interface MypagePersonalAskMapper {
	//1:1문의 등록
	int addPersonalAsk(PersonalAskVO askVo, String userId) throws ClassNotFoundException, SQLException;
	//1:1문의 리스트
	List<PersonalAskVO> getPersonalAskList(String userId) throws ClassNotFoundException, SQLException;
	//주문내역 조회
	//List<MPODOrderDTO> selectOrderList (String userId) throws ClassNotFoundException, SQLException;
	// 문의 카테고리 major
	List<String> getmajCategory() throws ClassNotFoundException, SQLException;
	// 문의 카테고리 minor
	List<String> getminCategory(String askCategoryMajor) throws ClassNotFoundException, SQLException;
	// 문의 키워드
	//List<FaqDTO> faqKeyword(String faq_title) throws ClassNotFoundException, SQLException;
}
