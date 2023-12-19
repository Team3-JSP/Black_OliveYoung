package com.blackolive.app.mapper.exhibition;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.blackolive.app.service.exhibition.ExhibitionService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/*.xml"})
public class ExhibitionTest {

	@Autowired
	private ExhibitionService exhibitionService;
	
//	 배너 정보 갖고오는 테스트 - 확인 완료
	@Test
	public void test() {
		
		assertNotNull(this.exhibitionService.getExhibitionBannerService(2));
	
	}

}