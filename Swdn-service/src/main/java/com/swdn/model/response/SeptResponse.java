package com.swdn.model.response;

import com.swdn.constants.SeptStatus;

import lombok.Data;

@Data
public class SeptResponse {
	
	private SeptStatus septStatus;
	
	private String userName;
	
	private String firstName;
	
	private String lastName;

}
