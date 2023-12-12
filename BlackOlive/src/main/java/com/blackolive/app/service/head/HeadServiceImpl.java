package com.blackolive.app.service.head;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
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
		
		
		log.info(">>HeadService call...");
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> "+headMapper);
	
			
//		Map<CategoryLargeDTO, List<CategoryMidDTO>> list  = this.headMapper.getHeadCategory(categoryTotalId);
			
		List<CategoryLargeDTO> largeList = headMapper.getHeadCategory(categoryTotalId);
        List<CategoryMidDTO> midList = headMapper.getHeadCategoryMid(categoryTotalId);
        
        Map<CategoryLargeDTO, List<CategoryMidDTO>> resultMap = new LinkedHashMap<>();

        for (CategoryLargeDTO largeDTO : largeList) {
            List<CategoryMidDTO> associatedMidList = new ArrayList<>();

            for (CategoryMidDTO midDTO : midList) {
                if (midDTO.getCategoryLargeId().equals( largeDTO.getCategoryLargeId() ) ) {
                    associatedMidList.add(midDTO);
                }
            }

            resultMap.put(largeDTO, associatedMidList);
        }

        return resultMap;
	} // getHeadCategorySerivce


} // class
