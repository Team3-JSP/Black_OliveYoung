package com.blackolive.app.service.review;

import java.util.List;

import com.blackolive.app.domain.review.ReviewDTO;

public interface ReviewService {

	List<ReviewDTO> reviewListService(String productDisplayId, String gdasSort, String productId, int currentPage, int numberPerPage);
}
