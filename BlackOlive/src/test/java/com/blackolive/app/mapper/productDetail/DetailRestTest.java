package com.blackolive.app.mapper.productDetail;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.blackolive.app.domain.productdetail.QnAListDTO;
import com.blackolive.app.service.productdetail.ProductDetailService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/*.xml"})
public class DetailRestTest {
	
	@Autowired
	private ProductDetailService productDetailService;

	@Test
	public void test() {
		
		String productDisplayId = "pd_00000298";
		int currentPages = 2;
		List<QnAListDTO> qnaList = this.productDetailService.getProductQnaService(productDisplayId, currentPages, 10);
		assertNotNull(qnaList);
	} // test

}
