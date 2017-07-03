package com.swdn.constants;

import lombok.Getter;

public enum UserType {

	STUDENT("Student"), TEACHER("Teacher"), PARENT("Parent");

	UserType(String userType) {

		this.userType = userType;
	}

	@Getter
	private String userType;

}
