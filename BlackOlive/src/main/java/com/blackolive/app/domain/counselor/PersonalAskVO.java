package com.blackolive.app.domain.counselor;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PersonalAskVO {
	
	private String personalAskId;			//1:1문의 ID
	private String userId;						//회원ID
	private String orderId;						//주문ID 
	private Date personalAskDate ;		//1:1문의 작성일
	private String personalAskStatus;		//1:1문의 상태
	private String personalAskContent;	//1:1문의 내용
	private String personalAskImg;			//1:1문의 첨부이미지
	private String personalAskAnswer;		//1:1문의 답변
	
	private String askCategoryId;			//문의 카테고리ID
	private String askCategoryMajor;		//문의 카테고리 대분류
	private String askCategoryMinor;		//문의 카테고리 소분류
	
}
