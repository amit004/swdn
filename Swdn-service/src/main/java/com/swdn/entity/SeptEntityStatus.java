package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "usr_sept_status")
@Data
public class SeptEntityStatus {

	@Column(name = "student_id")
	@Id
	private Integer studentId;

	@Column(name = "sept_status")
	private String septStatus;

	@Column(name = "created_at")
	private String startedDate;

	@Column(name = "updated_at")
	private String updatedDate;

	//TODO ATTACH IT WITH YEAR 
}
