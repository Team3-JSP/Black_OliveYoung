package com.blackolive.app.service.counselor;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.counselor.FaqVO;
import com.blackolive.app.mapper.counselor.CounselorFaqMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CounselorServiceImpl implements CounselorService {

	@Autowired
	private CounselorFaqMapper faqMapper;
	
	@Override
	public List<FaqVO> faqlistwithMinorservice(String askCategoryMajor, String askCategoryMinor) throws ClassNotFoundException, SQLException {
		log.info(">> faqlistwithMinorservice called");
		return this.faqMapper.faqlistwithMinor(askCategoryMajor, askCategoryMinor);
	}

	@Override
	public List<FaqVO> faqlistwithMajorservice(String askCategoryMajor) throws ClassNotFoundException, SQLException {
		log.info(">> faqlistwithMajorservice called");
		return this.faqMapper.faqlistwithMajor(askCategoryMajor);
	}

	@Override
	public List<FaqVO> faqlistsearchservice(String searchword) throws ClassNotFoundException, SQLException {
		log.info(">> faqlistsearchservice called");
		return this.faqMapper.faqlistsearch(searchword);
	}

}
