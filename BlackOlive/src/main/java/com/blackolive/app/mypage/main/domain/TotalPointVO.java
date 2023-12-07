package com.blackolive.app.mypage.main.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TotalPointVO {
	
	private String id;			//회원 id
	private int totalPoint;		//잔여 포인트 
		
}
