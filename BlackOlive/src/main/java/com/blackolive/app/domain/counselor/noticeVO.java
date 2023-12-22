package com.blackolive.app.domain.counselor;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class noticeVO {
		
	private String noticeId;		//공지사항 Id
	private int noticeNum;			//공지사항 글번호
	private String noticeTitle;		//공지사항 제목
	private String noticeCategory;	//공지사항 카테고리
	private String noticeContent;	//공지사항 내용
	private Date noticeDate;		//공지사항 작성일
	
}
