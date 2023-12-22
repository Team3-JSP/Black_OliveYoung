package com.blackolive.app.mapper.counselor;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.domain.counselor.PersonalAskVO;

public interface CounselorPersonalAskMapper {
	//1:1문의 등록
	int addPersonalAsk(PersonalAskVO askVo) throws ClassNotFoundException, SQLException;
	//1:1문의 리스트
	List<PersonalAskVO> getPersonalAskList(String userId) throws ClassNotFoundException, SQLException;
	// 문의 카테고리 major
	List<String> getmajCategory() throws ClassNotFoundException, SQLException;
	// 문의 카테고리 minor
	List<String> getminCategory( @Param("askCategoryMajor") String askCategoryMajor) throws ClassNotFoundException, SQLException;
	// 문의 키워드
	List<FaqVO> faqKeyword(@Param("faqKeyword") String faqKeyword) throws ClassNotFoundException, SQLException;
	//주문내역 조회
	List<PersonalAskVO> getOrderList ( @Param("userId") String userId ) throws ClassNotFoundException, SQLException;
}
