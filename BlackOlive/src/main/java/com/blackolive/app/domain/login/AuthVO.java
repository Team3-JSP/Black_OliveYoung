package com.blackolive.app.domain.login;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuthVO {
	
	private String username;
	private String authority;
	
}
