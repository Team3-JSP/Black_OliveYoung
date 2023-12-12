package com.blackolive.app.mapper.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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

	List<EventDTO> selectAllEvent(String click) throws SQLException;

	EventDTO selectOneEvent(String eventId) throws SQLException;

	List<GiftCardDTO> selectAllGiftCard() throws SQLException;

	GiftCardDTO selectOneGiftCard(String giftCardId) throws SQLException;

	List<MsgCardDTO> selectAllMsgCard() throws SQLException;
	
} // interface
