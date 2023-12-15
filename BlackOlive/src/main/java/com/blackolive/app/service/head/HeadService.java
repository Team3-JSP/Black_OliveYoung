package com.blackolive.app.service.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.EventDTO;
import com.blackolive.app.domain.head.GiftCardDTO;
import com.blackolive.app.domain.head.MsgCardDTO;
import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.domain.review.ReviewDTO;


public interface HeadService {

	public Map<CategoryLargeDTO, List<CategoryMidDTO>> getHeadCategorySerivce(int categoryTotalId) throws SQLException, ClassNotFoundException;
	
	
	
	public List<EventDTO> getEventList(String click) throws SQLException; //  이벤트 리스트
	
	public EventDTO getEventDetail(String eventId) throws SQLException; // 이벤트 하나
	
	public List<GiftCardDTO> getGiftCardList() throws SQLException; // 기프트카드 리스트
	
	public GiftCardDTO getGiftCardDetail(String giftCardId) throws SQLException; // 기프트 카드 하나
	
	public List<MsgCardDTO> getMsgcardList() throws SQLException; // 메세지 카드 리스트
	
	public List<CategoryLargeDTO> getRankingCatLargeName(String type) throws SQLException; // 랭킹 카테고리 중분류 이름 리스트

	public List<ProductContainer> getSaleRankingProduct(String categoryLargeId) throws SQLException; // 판매랭킹 상품 얻기

	public List<ReviewDTO> getReviewBest(String categoryLargeId) throws SQLException;
} // interface
