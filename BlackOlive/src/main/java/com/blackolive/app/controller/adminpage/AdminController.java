package com.blackolive.app.controller.adminpage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.FilePart;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.blackolive.app.domain.adminpage.OrderCheckDTO;
import com.blackolive.app.domain.adminpage.ProductDTO;
import com.blackolive.app.domain.adminpage.QnaListDTO;
import com.blackolive.app.domain.productList.PageDTO;
import com.blackolive.app.service.adminpage.AdminPageIndexService;
import com.blackolive.app.service.adminpage.AdminQnAService;
import com.blackolive.app.service.adminpage.OrderCheckService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/adminpage/*")
@Log4j
public class AdminController {
	
	@Autowired
	private AdminPageIndexService adminPageIndexService;
	
	@Autowired
	private OrderCheckService orderCheckService;
	
	@Autowired
	private AdminQnAService adminQnAService;
	
	@GetMapping("/")
	public String adminPage() {
		
		return "adminpage/index";
	}
	
	@GetMapping("/product/register")
	public String adminProductRegisterPage() {
		
		return "adminpage/productregister";
	}
	
	@GetMapping("/product/view")
	public String adminProductViewPage() {
		
		return "adminpage/productview";
	}
	
	@GetMapping("/chart")
	public String chartpage() {
		
		return "adminpage/chart";
	}
	
	@PostMapping("/product/reg")
	public String productReg(ProductDTO products, @RequestParam("formFileMultiple")MultipartFile formFileMultiple ){
		// 1. 첨부된 파일 유무 확인 후에 서버 파일 저장.
		CommonsMultipartFile multipartFile = products.getProductImg();
		System.out.println("multipartFile: " + multipartFile);
		/*
		 * for (int i = 0; i < jsondto.getProductDataList().size(); i++) { MultipartFile
		 * multipartFile = jsondto.getProductDataList().get(i).getProductImg(); } // for
		 */		
		
		System.out.println(formFileMultiple);
		
		if (products == null) {
			return "adminpage/productregister?error";
		}
		return "redirect:/adminpage";
	} // productReg
	
	@GetMapping("/order/check")
	public String orderCheck(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value="optionCheck", defaultValue = "0")int optionCheck,
			Model model
			) {
		
		// 주문 리스트 갖고오는 작업
		List<OrderCheckDTO> orderCheck = this.orderCheckService.getOrderList(currentPage, optionCheck);
		model.addAttribute("orderCheck", orderCheck);
		
		int totalpage = this.orderCheckService.getTotalPage();
		
		model.addAttribute("pageDTO", new PageDTO(currentPage, 10, 10, totalpage));
		
		return "adminpage/ordercheck";
	}
	
	@GetMapping("/response/qna")
	public String qnaList(Model model) {
		
		List<QnaListDTO> qnaList = this.adminQnAService.getQnAList();
		model.addAttribute("qnaList", qnaList);
		
		return "adminpage/qnalist";
	}
	
	@GetMapping("/response/qnaanswer")
	public String qnaAnswer(@RequestParam("qnaId") String qnaId, Model model) {
		
		QnaListDTO qna = this.adminQnAService.getQnaService(qnaId);
		model.addAttribute("qna", qna);
		
		return "adminpage/qnaanswer";
	}
	
	

} //class
