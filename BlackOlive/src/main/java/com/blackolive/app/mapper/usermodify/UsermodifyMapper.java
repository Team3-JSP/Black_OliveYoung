package com.blackolive.app.mapper.usermodify;

import java.sql.SQLException;

import com.blackolive.app.domain.signin.OliveUserDTO;

public interface UsermodifyMapper {
	//회원정보반환
	public OliveUserDTO getUser(String userId) throws ClassNotFoundException, SQLException;
	
	//비밀번호 체크
	//public String pwdCheck(String userPassword) throws ClassNotFoundException, SQLException;
	
	//비밀번호 변경
	public OliveUserDTO pwdUpdate(String userPassword) throws ClassNotFoundException, SQLException;
}
