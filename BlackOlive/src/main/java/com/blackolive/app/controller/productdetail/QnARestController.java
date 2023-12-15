package com.blackolive.app.controller.productdetail;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.productList.PageDTO;
import com.blackolive.app.domain.productdetail.QnAListDTO;
import com.blackolive.app.domain.productdetail.QnAListPageDTO;
import com.blackolive.app.domain.productdetail.QnAWriteDTO;
import com.blackolive.app.service.productdetail.ProductDetailService;
import com.blackolive.app.service.productdetail.QnARestService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class QnARestController {
	
	@Autowired
	private QnARestService qnaRestService;
	
	@Autowired
	private ProductDetailService productDetailService;

	@GetMapping("/getQnAList")
	public ResponseEntity<QnAListPageDTO> getQnaList(
			@RequestParam(value = "currentPage", defaultValue = "1")String currentPage 
			,@RequestParam(value ="productDisplayId")String productDisplayId
			, Principal principal){
		
		log.info("QnARestController getQnAList call...");
	
		int currentPages = Integer.parseInt(currentPage);
		
		List<QnAListDTO> qnaList = this.productDetailService.getProductQnaService(productDisplayId, currentPages, 10);
		
		int qnaTotalPages =this.productDetailService.getQnATotalPagesService(productDisplayId);
		PageDTO qnaPagedto = new PageDTO(currentPages, 10, 10, qnaTotalPages);
		
		String userId = principal !=null? principal.getName() : null;
		System.out.println(userId);
		qnaList.forEach(qna -> {
			if (userId != null && userId.equals( qna.getUserId()) ) {
				System.out.println(">>>>>>>>>>>>>들어옴");
				qna.setCanModify(true);
			}
			qna.setUserId(maskUserId(qna.getUserId()) );
		});

		
		QnAListPageDTO qnaListPageDTO = new QnAListPageDTO(qnaList, qnaPagedto);
		
		return qnaListPageDTO != null ? new ResponseEntity<QnAListPageDTO>(qnaListPageDTO, HttpStatus.OK) : new ResponseEntity<QnAListPageDTO>(qnaListPageDTO, HttpStatus.INTERNAL_SERVER_ERROR);
	} // getQnaList
	
	@GetMapping("/writeQna")
	public ResponseEntity<String> writeQna(QnAWriteDTO qnaWriteDTO, Principal principal) {
		int rowCnt = 0;
		
		log.info("QnARestController writeQna call...");
		String userId = principal.getName();
		qnaWriteDTO.setUserId(userId);
		
		System.out.println(qnaWriteDTO.getQnaQuestion());
		System.out.println(qnaWriteDTO.getProductDisplayId());
		
		rowCnt = this.qnaRestService.insertQnAService(qnaWriteDTO);
		
		return rowCnt == 1 ? new ResponseEntity<String>("success", HttpStatus.OK)
						   : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	} // writeQna
	
	// userId를 가리는 작업
	private String maskUserId (String userId) {
		
		return userId.substring(0, userId.length() - 4) + "****";
	} // maskUserId
	
	@GetMapping("/modifyQnA")
	public ResponseEntity<QnAListDTO> modifyQnA(String qnaId){
		log.info("QnARestController modifyQnA call...");
		
		QnAListDTO qna = this.qnaRestService.getQnAService(qnaId);
		
		return qna != null ? new ResponseEntity<QnAListDTO>(qna, HttpStatus.OK) : new ResponseEntity<QnAListDTO>(qna, HttpStatus.INTERNAL_SERVER_ERROR);
	} // modifyQnA
	
	
	
	
	
} //class
