package com.swdn.model.response;

import com.swdn.exception.SwdnException;

import lombok.Data;

@Data
public class SwdnResponse {

	private Object data;
	private SwdnException swdnException;

}
