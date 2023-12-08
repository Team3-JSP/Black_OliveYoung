package com.blackolive.app.domain.signin;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OliveUserDTO {
	private String userId;
	private String userName;
	private String userPassword;
	private String userTel;
	private Date userBirth;
	private  int userGender;
	private String userEmail;
	private String gradeId;
	private int userPoint;
}
