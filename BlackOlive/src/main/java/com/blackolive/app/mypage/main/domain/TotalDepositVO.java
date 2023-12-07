package com.blackolive.app.mypage.main.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TotalDepositVO {
	
	private String id;			//회원 id
	private int totalDeposit;	//잔여 예치금
	
}
