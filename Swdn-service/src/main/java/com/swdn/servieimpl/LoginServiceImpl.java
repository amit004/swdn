package com.swdn.servieimpl;

import org.springframework.stereotype.Service;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.LoginRequest;
import com.swdn.responsemodels.LoginResponse;
import com.swdn.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Override
	public LoginResponse doLogin(LoginRequest loginRequest) throws SwdnException {
		return null;
	}

}
