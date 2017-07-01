package com.swdn.error;

import lombok.Getter;

public enum SwdnErrors {

	// LOGIN ERRORS
	SWDN_LOGIN_VALIDATION_ERR_00("Validation errors"), SWDN_ERROR_01("User Not Found"), SWDN_ERROR_02(
			"User Password is not correct"), SWDN_ERROR_03(
					"User's Sept is not completed kindly complete the sept first"),

	SWDN_TOKEN_ERROR_01("User Token is invalid"),

	SWDN_LOGOUT_ERROR_01("User Token is null"),

	SWDN_HEADERS_ERROR_01("agent name  is missing in headers");

	@Getter
	private String errorMessage;

	SwdnErrors(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
