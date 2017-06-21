package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.LoginRequest;
import com.swdn.responsemodels.LoginResponse;

public interface LoginService {

	public LoginResponse doLogin(LoginRequest loginRequest) throws SwdnException;

}
