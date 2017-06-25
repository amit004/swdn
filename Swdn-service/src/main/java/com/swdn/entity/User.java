package com.swdn.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "tbl_user")
public class User implements Serializable {

	private static final long serialVersionUID = 8633415090390966715L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer Id;

	@Column(name = "user_name")
	private String userName;
	
	@Column(name="password")
	private String password;

	@Column(name = "e_mail")
	private String email;

	@Column(name = "user_type")
	private String userType;

	@Column(name = "user_status")
	private String userStatus;

}