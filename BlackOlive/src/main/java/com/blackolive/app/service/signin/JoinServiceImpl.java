package com.blackolive.app.service.signin;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.mapper.signin.JoinMapper;

@Service
public class JoinServiceImpl implements JoinService{

	@Autowired
	private JoinMapper joinMapper;
	
	@Override
	public String getJoinCheck(String u_tel) throws ClassNotFoundException, SQLException {
		return this.joinMapper.joinCheck(u_tel);
	}

	@Override
	public OliveUserDTO getAlreadyUser(OliveUserDTO userDto) throws ClassNotFoundException, SQLException {
		return this.joinMapper.alreadyUser(userDto);
	}

}
