package com.blackolive.app.service.counselor;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.mapper.counselor.CounselorFaqMapper;

@Service
public class CounselorServiceImpl implements CounselorService {

	@Autowired
	private CounselorFaqMapper faqMapper;
	
	@Override
	public List<FaqVO> faqlistwithMinorservice(String askCategoryMinor) throws ClassNotFoundException, SQLException {
		
		return this.faqMapper.faqlistwithMinor(askCategoryMinor);
	}

	@Override
	public List<FaqVO> faqlistwithMajorservice(String askCategoryMajor) throws ClassNotFoundException, SQLException {
		
		return this.faqMapper.faqlistwithMajor(askCategoryMajor);
	}

	@Override
	public List<FaqVO> faqlistsearchservice(String searchword) throws ClassNotFoundException, SQLException {
		
		return this.faqMapper.faqlistsearch(searchword);
	}

}
