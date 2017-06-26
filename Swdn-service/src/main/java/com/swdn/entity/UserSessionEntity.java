package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="login_user_status")
public class UserSessionEntity {

	
	@Id
	@Column(name="login_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer loginId;
	
	@Column(name="user_reference_id")
	private Integer userId;
	
	@Column(name="user_type_id")
	private Integer userTypeId;
	
	@Column(name="user_system_ip")
	private String systemIp;
	
	@Column(name="login_session_id")
	private String loginSessionId;
	
	@Column(name="logout_date")
	private String logoutDate;
	
	@Column(name="login_status")
	private Integer loginStatus;
	
	@Column(name="android_gsm_id")
	private String androidGsmId;
	
	@Column(name="ios_gsm_id")
	private String iosGsmId;
	
	@Column(name="current_brower")
	private String agent;

	@Column(name="status")
	private Integer status;
		
}
