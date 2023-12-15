package com.blackolive.app.service.productdetail;

import com.blackolive.app.domain.productdetail.QnAListDTO;
import com.blackolive.app.domain.productdetail.QnAWriteDTO;

public interface QnARestService {

	// QnA등록 작업 insertQnA
	public int insertQnAService(QnAWriteDTO qnaWriteDTO);
	
	// QnA 삭제 작업
	
	// Qna 수정하기 위해 QnaDTO를 갖고오는 작업 getQnA
	public QnAListDTO getQnAService(String qnaId);
	
} // interface
