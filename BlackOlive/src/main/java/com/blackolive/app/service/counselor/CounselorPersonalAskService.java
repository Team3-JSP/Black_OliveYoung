package com.blackolive.app.service.counselor;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.domain.counselor.PersonalAskVO;

public interface CounselorPersonalAskService {
	//1:1문의 등록
	int insertPersonalAsk(PersonalAskVO askVo, String userId) throws ClassNotFoundException, SQLException;
	//1:1문의 리스트
	List<PersonalAskVO> selectPersonalAskList(String userId) throws ClassNotFoundException, SQLException;
	//주문내역 조회
	//List<MPODOrderDTO> selectOrderList (String userId) throws ClassNotFoundException, SQLException;
	// 문의 카테고리 대분류
	List<String> selectmajCategory() throws ClassNotFoundException, SQLException;
	// 문의 카테고리 소분류
	List<String> selectminCategory(@Param("askCategoryMajor") String askCategoryMajor) throws ClassNotFoundException, SQLException;
	// 문의 키워드
	List<FaqVO> faqKeyword(String faqKeyword) throws ClassNotFoundException, SQLException;
}
