package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "mst_student")
public class StudentEntity {

	@Id
	@Column(name = "student_id")
	private Integer studentId;

	@Column(name = "user_reference_id")
	private Integer userId;

	private String email;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "school_name")
	private String schoolName;

	@Column(name = "school_code")
	private String schoolCode;

	@Column(name = "class_name")
	private String className;

	@Column(name = "section")
	private String section;

	@Column(name = "registration_no")
	private String enrollNo;

	@Column(name = "academic_year")
	private String academicYear;

	@Column(name = "student_photo")
	private String photoUrl;

	private String gender;

	@Column(name = "mother_name")
	private String motherName;

	@Column(name = "father_name")
	private String fatherName;
	
	private String address;
	
	@Column(name = "city_village")
	private String city;
	
	private String state;
	
	@Column(name = "pin_code")
	private String pinCode;
	
	@Column(name= "contact_number")
	private String contactNumber;
	
	
}
