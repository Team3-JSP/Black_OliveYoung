package com.blackolive.app.service.usermodify;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.signin.OliveUserDTO;
import com.blackolive.app.mapper.usermodify.UsermodifyMapper;

@Service
public class UsermodifyServiceImpl implements UsermodifyService {
	@Autowired
	private UsermodifyMapper usermodifyMapper;
	
	@Override
	public OliveUserDTO getUser(String userId) throws ClassNotFoundException, SQLException {
		return this.usermodifyMapper.getUser(userId);
	}
	
	// 비밀번호 변경
	@Override
	public OliveUserDTO pwdModify(String userPassword) throws ClassNotFoundException, SQLException {
		return this.usermodifyMapper.pwdUpdate(userPassword);
	}
	
	//비밀번호 조회
//	@Override
//	public String pwdCheck(String userPassword) throws ClassNotFoundException, SQLException {
//		userPassword = this.usermodifyMapper.pwdCheck(userPassword);
//		return userPassword;
//	}

}
