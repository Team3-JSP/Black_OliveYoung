package com.blackolive.app.mapper.counselor;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.counselor.FaqVO;

public interface CounselorFaqMapper {
	
	//카테고리로 불러오기 GET방식
	//마이너 카테고리로 불러오기		//카테고리id
	public List<FaqVO> faqlistwithMinor(@Param("askCategoryMajor") String askCategoryMajor, @Param("askCategoryMinor") String askCategoryMinor) throws ClassNotFoundException, SQLException;
	
	//메이져 카테고리로 불러오기		//카테고리명
	public List<FaqVO> faqlistwithMajor(String askCategoryMajor) throws ClassNotFoundException, SQLException;
	
	//키워드로 불러오기 == 검색 POST방식
	public List<FaqVO> faqlistsearch(String searchword) throws ClassNotFoundException, SQLException;
	
	
}
