package com.swdn.responsemodels;

import com.swdn.exception.SwdnException;

import lombok.Data;

@Data
public class SwdnResponse {

	private Object data;
	private SwdnException swdnException;

}
