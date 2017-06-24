package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.LoginResponse;

public interface LoginService {

	public LoginResponse doLogin(LoginRequest loginRequest) throws SwdnException;

}
