package com.blackolive.app.mapper.productdetail;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.productdetail.QnAWriteDTO;

public interface QnARestMapper {
	
	// QnA등록 작업 insertQnA
	public int insertQnA(@Param("qnaWriteDTO") QnAWriteDTO qnaWriteDTO);

} // interface
