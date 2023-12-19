package com.blackolive.app.service.counselor;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.counselor.Criteria;
import com.blackolive.app.domain.counselor.FaqVO;

public interface CounselorService {
	
	//마이너 카테고리로 불러오기 서비스
	public List<FaqVO> faqlistwithMinorservice(String askCategoryMajor, String askCategoryMinor, Criteria criteria) throws ClassNotFoundException, SQLException;
	
	//메이져 카테고리로 불러오기 서비스
	public List<FaqVO> faqlistwithMajorservice(String askCategoryMajor, Criteria criteria) throws ClassNotFoundException, SQLException;
	
	/*
	//키워드로 불러오기 == 검색 POST방식 서비스 public List<FaqVO> faqlistsearchservice(String
	searchword) throws ClassNotFoundException, SQLException;
	 */
	//검색시 총 페이지 수 불러오기
	public int getTotalservice(Criteria criteria) throws ClassNotFoundException, SQLException;
	
	//키워드로 검색결과 보기
	public List<FaqVO> faqlistsearchwithpagingservice(Criteria criteria) throws ClassNotFoundException, SQLException;
	
	//매이저태그 선택시 총 페이지 수 불러오기
	public int getMajorTagTotalservice(String askCategoryMajor) throws ClassNotFoundException, SQLException;
	
	//마이너태그 선택시 총 페이지 수 불러오기
	public int getMinorTagTotalservice(String askCategoryMajor, String askCategoryMinor) throws ClassNotFoundException, SQLException;
	
}
