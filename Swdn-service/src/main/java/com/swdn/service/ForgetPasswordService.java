package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.ForgetPasswordRequest;
import com.swdn.responsemodels.ForgetPasswordResponse;

public interface ForgetPasswordService {

	public ForgetPasswordResponse doForgetPassword(ForgetPasswordRequest forgetPasswordRequest) throws SwdnException;

}
