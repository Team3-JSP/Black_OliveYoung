package com.blackolive.app.service.mypage;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.mapper.mypage.MypageMainMapper;

@Service
public class MypageMainServiceImpl implements MypageMainService {
	
	@Autowired
	private MypageMainMapper mapper;
	
	@Override
	public List<Integer> deliveryStatus(String userid) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return this.mapper.getDeliveryStatus(userid);
	}

}
