package com.blackolive.app.service.review;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.review.ReviewDTO;
import com.blackolive.app.mapper.review.ReviewMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService{

	private ReviewMapper reviewMapper;
	
	@Override
	public List<ReviewDTO> reviewListService(String productDisplayId, String gdasSort, String productId,
			int currentPage, int numberPerPage) {
		// TODO Auto-generated method stub
		return this.reviewMapper.reviewList(productDisplayId, gdasSort, productId, currentPage, numberPerPage);
	}

}
