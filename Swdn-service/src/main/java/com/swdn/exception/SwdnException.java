package com.swdn.exception;

import lombok.Data;

@Data
public class SwdnException extends Exception {

	private String errorMessage;

	private String errorCode;

	private String uiErrorMessage;

	public SwdnException(String errorCode, String errorMessage, String uiErrorMessage) {
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.uiErrorMessage = uiErrorMessage;
	}

}
