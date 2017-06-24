package com.swdn.servieimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.dao.UserDao;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.LoginResponse;
import com.swdn.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	UserDao userDao;

	@Override
	public LoginResponse doLogin(LoginRequest loginRequest) throws SwdnException {
		LoginResponse loginResponse = new LoginResponse();
		loginResponse.setUserInfo(userDao.getUserDetails(loginRequest.getUserName()));
		return loginResponse;
	}

}
