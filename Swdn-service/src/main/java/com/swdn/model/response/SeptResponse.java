package com.swdn.model.response;

import lombok.Data;

@Data
public class SeptResponse {
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
