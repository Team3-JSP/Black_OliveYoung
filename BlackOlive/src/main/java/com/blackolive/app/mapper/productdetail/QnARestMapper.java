package com.blackolive.app.mapper.productdetail;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.productdetail.QnAListDTO;
import com.blackolive.app.domain.productdetail.QnAWriteDTO;

public interface QnARestMapper {
	
	// QnA등록 작업 insertQnA
	public int insertQnA(@Param("qnaWriteDTO") QnAWriteDTO qnaWriteDTO);
	
	// Qna 수정하기 위해 QnaDTO를 갖고오는 작업 getQnA
	public QnAListDTO getQnA(@Param("qnaId")String qnaId);

} // interface
