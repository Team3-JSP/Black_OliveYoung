package com.blackolive.app.mapper.adminpage;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;


@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/*.xml"})
public class AdminPageIndexTest {

	
	@Autowired
	AdminPageIndexMapper adminPageIndexMapper;
	
	/*
	@Test
	public void getMonthlySales() {
		assertNotNull(this.adminPageIndexMapper.getSalesPerMonth(null));
	}
	*/
	
	@Test
	public void getDaylySales() {
		
		// assertNotNull(this.adminPageIndexMapper.getLargeCategory(1)); 성공
		
		assertNotNull(this.adminPageIndexMapper.getBuyInfo(1));
		
	}

}
