package com.blackolive.app.mapper.signin;

import java.sql.SQLException;

import com.blackolive.app.domain.signin.OliveUserDTO;

public interface JoinMapper {
	//회원가입 여부 체크
	public String joinCheck(String u_tel) throws ClassNotFoundException, SQLException;
	//가입된 회원
	public OliveUserDTO alreadyUser (OliveUserDTO userDto) throws ClassNotFoundException, SQLException;
}
