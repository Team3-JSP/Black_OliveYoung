package com.blackolive.app.domain.head;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryLargeDTO {

	private String categoryLargeId;
	private String categoryLargeName;
	private int categoryTotalId;
	private List<CategoryMidDTO> midList;
	
} // class
