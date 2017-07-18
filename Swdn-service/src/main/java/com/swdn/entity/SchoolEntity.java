package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="mst_school")
public class SchoolEntity {

	@Column(name = "school_code")
	@Id
	private String schoolCode;

	@Column(name = "school_name")
	private String schoolName;

	@Column(name = "school_board")
	private String schoolBoard;

	@Column(name = "address")
	private String schoolAddress;

	@Column(name = "email")
	private String schoolEmail;

	@Column(name = "contact_no")
	private String contactNo;

}
