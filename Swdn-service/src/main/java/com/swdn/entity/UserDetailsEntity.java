package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "mst_user")
public class UserDetailsEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_id")
	private Integer Id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "middle_name")
	private String middleName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "e_mail")
	private String email;

	private String status;

	@Column(name = "user_reference_id")
	private Integer userReferenceId;

	@Column(name = "user_type_desc")
	private String userType;

	@Column(name = "photo")
	private String photoUrl;

	@Column(name = "school_code")
	private String schoolCode;

}
