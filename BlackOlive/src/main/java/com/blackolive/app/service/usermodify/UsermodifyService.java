package com.blackolive.app.service.usermodify;

import java.sql.SQLException;

import com.blackolive.app.domain.signin.OliveUserDTO;

public interface UsermodifyService {
	// 회원정보반환
	public OliveUserDTO getUser(String userId) throws ClassNotFoundException, SQLException;
	
	// 비밀번호 체크
//	public String pwdCheck( String userPassword) throws ClassNotFoundException, SQLException;
	
	// 비밀번호 변경
	public OliveUserDTO pwdModify (String userPassword) throws ClassNotFoundException, SQLException;

}
