package com.blackolive.app.service.signin;

import java.sql.SQLException;

import com.blackolive.app.domain.signin.OliveUserDTO;

public interface JoinService {
	//회원가입 여부 체크
	public String getJoinCheck(String u_tel) throws ClassNotFoundException, SQLException;
	//가입된 회원
	public OliveUserDTO getAlreadyUser (OliveUserDTO userDto) throws ClassNotFoundException, SQLException;
}
