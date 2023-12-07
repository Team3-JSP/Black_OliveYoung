package com.blackolive.app.mapper.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.ExampleDTO;

public interface HeadMapper {

	public Map<CategoryLargeDTO, List<CategoryMidDTO>> getHeadCategory (int categoryTotalId) throws SQLException, ClassCastException;
	
	public ExampleDTO getExample() throws SQLException;
	
} // interface
