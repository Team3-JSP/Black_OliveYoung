package com.blackolive.app.domain.login;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	
	private String userId;			//회원 id
	private String userPassword;	//회원 비밀번호
		
	//권한 정보
	private boolean enabled;
	private List<AuthVO> authority;		//회원 권한
	
	
}
