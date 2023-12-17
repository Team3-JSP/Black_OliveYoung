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
		
		System.out.println( this.adminPageIndexMapper.getSalesPerDay(null).toString() );
		
		assertNotNull(this.adminPageIndexMapper.getSalesPerDay(null));
	}

}
