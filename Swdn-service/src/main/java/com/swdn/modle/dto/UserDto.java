package com.swdn.modle.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Data
public class UserDto {
	
	private Integer Id;
	
	@Column(name="user_name")
	private String userName;
	
	@Column(name="e_mail")
	private String email;
	
	@Column(name="user_type")
	private String userType;
	
	@Column(name="user_status")
	private String userStatus;
		
}