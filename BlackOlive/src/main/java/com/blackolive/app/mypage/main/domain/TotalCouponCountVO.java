package com.blackolive.app.mypage.main.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TotalCouponCountVO {
	
	private String id;			//회원 id
	private int couponCount;	//총 쿠폰 개수
	
}
