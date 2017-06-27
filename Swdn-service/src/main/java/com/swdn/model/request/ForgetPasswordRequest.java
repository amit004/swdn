package com.swdn.model.request;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;

@Data
public class ForgetPasswordRequest {

	@NotNull(message="emailId can'nt be null")
	@NotEmpty(message="emailId can'nt be left blank")
    @Email(message="emailId should be valid email ")
	private String emailId;

}
