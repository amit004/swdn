package com.swdn.modle.dto;

import lombok.Data;

@Data
public class TokenDetailsDto {

	private String userName;
		
	private String tokenExpirationTime;
	
	private String agent;
	
	private String loginIp;
	
	private String tokenString;
	
}
