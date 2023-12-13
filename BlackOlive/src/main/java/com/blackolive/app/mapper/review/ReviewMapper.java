package com.blackolive.app.mapper.review;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.review.ReviewDTO;
import com.blackolive.app.domain.review.ReviewImgDTO;
import com.blackolive.app.domain.review.ReviewScoreDTO;

public interface ReviewMapper {

	// 리뷰 목록
	List<ReviewDTO> reviewList(@Param("productDisplayId") String productDisplayId, 
			@Param("gdasSort") String gdasSort, @Param("productId") String productId, 
			@Param("currentPage") int currentPage, @Param("numberPerPage") int numberPerPage);
	//리뷰 이미지
	List<ReviewImgDTO> reviewimg( String reviewId);
	// 리뷰 단일
	ReviewDTO review( String reviewId);
	// 상품 점수
	ReviewScoreDTO reviewScore( String productDisplayId, String productId);
	//페이징 처리
	// 전체 페이지 구하기
	int getTotalReviewPages(String productDisplayId, String productId, int numberPerPage)  throws SQLException;
		// 
	int getTotalReviewRecords(String productDisplayId, String productId)  throws SQLException;
	
}
