package com.swdn.model.response;

import com.swdn.modle.dto.SchoolDetailsDto;

import lombok.Data;

@Data
public class LoginResponse {

	private String gender;

	private String dateOfBirth;

	private String motherName;

	private String fatherName;

	private String address;

	private String city;

	private String state;

	private String pincode;

	private String phone;

	private String email;

	private String section;

	private String firstName;

	private String lastName;

	private String userName;

	private String userType;

	private String className;

	private Boolean isSeptCompleted;

	private String userToken;

	private String picUrl;

	private String swadhyanEnrolNo;

	private String schoolEnrolNo;

	private SchoolDetailsDto schoolDetails;

}
