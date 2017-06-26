package com.swdn.model.response;

import lombok.Data;

@Data
public class LoginResponse {

	private Integer userId;
	
	private String email;
	
	private String firstName;
	
	private String lastName;
	
	private String userName;
	
	private String status;
	
	private Boolean isSeptCompleted;
	
	private String userToken;
}
