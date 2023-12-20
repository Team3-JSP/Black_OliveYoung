package com.blackolive.app.service.counselor;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.domain.counselor.PersonalAskVO;
import com.blackolive.app.mapper.counselor.CounselorPersonalAskMapper;
@Service
public class CounselorPersonalAskServiceImpl implements CounselorPersonalAskService {

	@Autowired
	private CounselorPersonalAskMapper personalAskMapper;

	//1:1문의 등록 
	@Override
	public int insertPersonalAsk(PersonalAskVO askVo, String userId) throws ClassNotFoundException, SQLException {
		return 0;
	}
	
	//1:1문의 리스트
	@Override
	public List<PersonalAskVO> selectPersonalAskList(String userId) throws ClassNotFoundException, SQLException {
		return this.personalAskMapper.getPersonalAskList(userId);
	}
	
	// 문의 카테고리 대분류
	@Override
	public List<String> selectmajCategory() throws ClassNotFoundException, SQLException {
		return this.personalAskMapper.getmajCategory();
	}
	
	// 문의 카테고리 소분류
	@Override
	public List<String> selectminCategory(@Param("askCategoryMajor")String askCategoryMajor) throws ClassNotFoundException, SQLException {
		return this.personalAskMapper.getminCategory(askCategoryMajor);
	}

	@Override
	public List<FaqVO> faqKeyword(String faqKeyword) throws ClassNotFoundException, SQLException {
		return this.personalAskMapper.faqKeyword(faqKeyword);
	}


}
