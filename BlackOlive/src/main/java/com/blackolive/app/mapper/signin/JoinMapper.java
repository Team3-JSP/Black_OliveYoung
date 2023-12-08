package com.blackolive.app.mapper.signin;

import java.sql.SQLException;

import com.blackolive.app.domain.signin.OliveUserDTO;

public interface JoinMapper {
	//회원가입 여부 체크
	public OliveUserDTO joinCheck(String userTel) throws ClassNotFoundException, SQLException;
	//가입된 회원
	public OliveUserDTO alreadyUser (OliveUserDTO userDto) throws ClassNotFoundException, SQLException;
	//회원가입 휴대폰인증 완료 
	public OliveUserDTO verifyOk() throws SQLException, ClassNotFoundException;
	//약관동의 완료 
	//회원가입
	public int join(OliveUserDTO userDto) throws ClassNotFoundException, SQLException;
}
