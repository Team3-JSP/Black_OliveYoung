package com.blackolive.app.service.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.ExampleDTO;
import com.blackolive.app.mapper.head.HeadMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class HeadServiceImpl implements HeadService{

	@Autowired
	private HeadMapper headMapper;
	
	@Override
	public Map<CategoryLargeDTO, List<CategoryMidDTO>> getHeadCategorySerivce(int categoryTotalId) throws SQLException, ClassNotFoundException {
		Map<CategoryLargeDTO, List<CategoryMidDTO>> map = null;
		
		log.info(">>HeadService call...");
		
		try {
			
//			map = this.headMapper.getHeadCategory(categoryTotalId);
			
		} catch (Exception e) {
			log.info("HeadService exception");
			e.printStackTrace();
		} // try
		
		return map;
	}

	@Override
	public ExampleDTO getExample() throws SQLException {
		ExampleDTO dto = this.headMapper.getExample();
		
		System.out.println(dto);
		System.out.println("=================================================================");
		return dto;
	}

} // class
