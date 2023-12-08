package com.blackolive.app.security.mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Component("loginSuccessHandler")
@Log4j
public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	
	@Override
	public void onAuthenticationSuccess(
			HttpServletRequest request, 
			HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub		
		log.warn("> login Success");
		
		List<String> roles = new ArrayList<String>();
		
		authentication.getAuthorities().forEach(
				auth->{
					roles.add(auth.getAuthority());
					}
				);
		log.warn("role : " + roles);
		
		response.sendRedirect("/mypage/main");
		
		
	}
	
	
	
}
