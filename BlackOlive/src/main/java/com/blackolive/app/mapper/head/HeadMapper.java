package com.blackolive.app.mapper.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.head.AllCategoryDTO;
import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.EventDTO;
import com.blackolive.app.domain.head.ExampleDTO;
import com.blackolive.app.domain.head.GiftCardDTO;
import com.blackolive.app.domain.head.MsgCardDTO;
import com.blackolive.app.domain.head.TotalListDTO;

public interface HeadMapper {

//	public Map<CategoryLargeDTO, List<CategoryMidDTO>> getHeadCategory (int categoryTotalId) throws SQLException;
	
	List<CategoryLargeDTO> getHeadCategory(int categoryTotalId);

    List<CategoryMidDTO> getHeadCategoryMid(int categoryTotalId);
	
	public ExampleDTO getExample() throws SQLException;

	List<EventDTO> selectAllEvent(String click) throws SQLException; // 이벤트 리스트

	EventDTO selectOneEvent(String eventId) throws SQLException; // 이벤트 하나

	List<GiftCardDTO> selectAllGiftCard() throws SQLException; // 기프트카드 리스트

	GiftCardDTO selectOneGiftCard(String giftCardId) throws SQLException; // 기프트 카드 하나

	List<MsgCardDTO> selectAllMsgCard() throws SQLException; // 메시지 카드 리스트
	
	AllCategoryDTO getTotalCategory(String productDisplayId);

	List<CategoryMidDTO> selectRankingCatMidName(); // 랭킹 카테고리 중분류 이름 리스트
	
} // interface
