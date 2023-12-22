package com.blackolive.app.service.adminpage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.head.CategoryLargeDTO;

public interface AdminPageRestService {

	// 대분류 카테고리 갖고오는 작업 getLargeCategoryService
	public List<CategoryLargeDTO> getLargeCategoryService(int categoryTotalId);
	
} // interface
