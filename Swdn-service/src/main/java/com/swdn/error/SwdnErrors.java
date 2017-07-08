package com.swdn.error;

import lombok.Getter;

public enum SwdnErrors {

	// LOGIN ERRORS
	SWDN_LOGIN_VALIDATION_ERR_00("Validation errors"), SWDN_ERROR_01("User Not Found"), SWDN_ERROR_02(
			"User Password is not correct"), SWDN_ERROR_03(
					"User's Sept is not completed kindly complete the sept first"),

	SWDN_TOKEN_ERROR_01("User Token is invalid"),

	SWDN_LOGOUT_ERROR_01("User Token is null"),

	SWDN_HEADERS_ERROR_01("agent name  is missing in headers"),
	
	SWDN_SEPT_ERROR_00("There should be 9 sept questions"),

	SWDN_SEPT_ERROR_01("SEPT Details not found for student"),
	SWDN_SEPT_ERROR_02("SEPT Already started for student"),
	SWDN_SEPT_ERROR_03("SEPT Already completed for student. kindly contact your admin"),
	SWDN_SEPT_ERROR_04("SEPT Submission is not possible as you have crossed 20 mins"),
	SWDN_SEPT_ERROR_05("SEPT is not started yet for the student");



	@Getter
	private String errorMessage;

	SwdnErrors(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
