package com.swdn.error;

import lombok.Getter;

public enum SwdnErrors {

	// LOGIN ERRORS
	SWDN_LOGIN_ERROR_01("User Not Found"),
	SWDN_LOGIN_ERROR_02("User Password is not correct"),
	SWDN_LOGIN_ERROR_03("User's Sept is not completed kindly complete the sept first");

	@Getter
	private String errorMessage;

	SwdnErrors(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
