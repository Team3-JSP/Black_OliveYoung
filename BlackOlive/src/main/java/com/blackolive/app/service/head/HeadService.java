package com.blackolive.app.service.head;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.blackolive.app.domain.head.CategoryLargeDTO;
import com.blackolive.app.domain.head.CategoryMidDTO;
import com.blackolive.app.domain.head.EventDTO;
import com.blackolive.app.domain.head.ExampleDTO;
import com.blackolive.app.domain.head.GiftCardDTO;
import com.blackolive.app.domain.head.MsgCardDTO;


public interface HeadService {

	public Map<CategoryLargeDTO, List<CategoryMidDTO>> getHeadCategorySerivce(int categoryTotalId) throws SQLException, ClassNotFoundException;
	
	
	
	public List<EventDTO> getEventList(String click) throws SQLException;
	
	public EventDTO getEventDetail(String eventId) throws SQLException;
	
	public List<GiftCardDTO> getGiftCardList() throws SQLException;
	
	public GiftCardDTO getGiftCardDetail(String giftCardId) throws SQLException;
	
	public List<MsgCardDTO> getMsgcardList() throws SQLException;
} // interface
