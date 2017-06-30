package com.swdn.model.request;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;

@Data
public class SeptUploadRequest {
	
	@NotNull
	@NotEmpty(message = "Sept input details can'nt be left blank ")
	private String SeptInputJson;

}
