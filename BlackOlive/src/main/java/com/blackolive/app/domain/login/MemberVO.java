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
	private String userName;		//회원 이름
	private String gradeId;			//회원 등급
	private String userPoint;		//회원 포인트
	private String userCouponCount;	//회원 쿠폰개수
	private String userDeposit;		//회원 예치금
	private String profileImg;		//회원 프로필이미지
	
	//권한 정보
	private boolean enabled;
	private List<AuthVO> authority;		//회원 권한
	
	
}
