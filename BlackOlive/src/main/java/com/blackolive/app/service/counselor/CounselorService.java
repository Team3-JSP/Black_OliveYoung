package com.blackolive.app.service.counselor;

import java.sql.SQLException;
import java.util.List;

import com.blackolive.app.domain.counselor.FaqVO;

public interface CounselorService {
	
	//마이너 카테고리로 불러오기 서비스
	public List<FaqVO> faqlistwithMinorservice(String askCategoryMajor, String askCategoryMinor) throws ClassNotFoundException, SQLException;
	
	//메이져 카테고리로 불러오기 서비스
	public List<FaqVO> faqlistwithMajorservice(String askCategoryMajor) throws ClassNotFoundException, SQLException;
	
	//키워드로 불러오기 == 검색 POST방식 서비스
	public List<FaqVO> faqlistsearchservice(String searchword) throws ClassNotFoundException, SQLException;
	
	
}
