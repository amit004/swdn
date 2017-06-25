package com.swdn.error;

import lombok.Getter;

public enum SwdnErrors {

	// LOGIN ERRORS
	SWDN_LOGIN_ERROR_01("User Not Found"),
	SWDN_LOGIN_ERROR_02("User Password is not correct");

	@Getter
	private String errorMessage;

	SwdnErrors(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
