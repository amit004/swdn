package com.swdn.model.request;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import lombok.Data;

@Data
public class LoginRequest {

	@NotNull
	@NotEmpty(message = "userName can'nt be left blank")
	private String userName;

	@NotNull
	@NotEmpty(message = "password can'nt be left blank")
	private String password;

}
