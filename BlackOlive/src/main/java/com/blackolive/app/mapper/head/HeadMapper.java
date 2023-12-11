package com.blackolive.app.mapper.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.ExampleDTO;
import com.blackolive.app.domain.head.TotalListDTO;

public interface HeadMapper {

//	public Map<CategoryLargeDTO, List<CategoryMidDTO>> getHeadCategory (int categoryTotalId) throws SQLException;
	
	List<CategoryLargeDTO> getHeadCategory(int categoryTotalId);

    List<CategoryMidDTO> getHeadCategoryMid(int categoryTotalId);
	
	public ExampleDTO getExample() throws SQLException;
	
	AllCategoryDTO getTotalCategory(String productDisplayId);
	
} // interface
