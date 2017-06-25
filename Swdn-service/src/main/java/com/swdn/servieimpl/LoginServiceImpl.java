package com.swdn.servieimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.dao.UserDao;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.LoginResponse;
import com.swdn.service.UserService;

@Service
public class LoginServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	@Override
	public LoginResponse doLogin(LoginRequest loginRequest) throws SwdnException {

		User userDto = userDao.getUserDetails(loginRequest.getUserName());

		if (userDto == null) {
			throw new SwdnException(SwdnErrors.SWDN_LOGIN_ERROR_01.getErrorMessage(),
					SwdnErrors.SWDN_LOGIN_ERROR_01.name(), SwdnErrors.SWDN_LOGIN_ERROR_01.getErrorMessage());
		}

		if (!loginRequest.getPassword().equals(userDto.getPassword())) {
			throw new SwdnException(SwdnErrors.SWDN_LOGIN_ERROR_02.getErrorMessage(),
					SwdnErrors.SWDN_LOGIN_ERROR_02.name(), SwdnErrors.SWDN_LOGIN_ERROR_02.getErrorMessage());
		}

		UserEntity userEntity = userDao.getUserDetailedInfo(userDto.getId());

		if (userEntity == null) {
			throw new SwdnException(SwdnErrors.SWDN_LOGIN_ERROR_01.getErrorMessage(),
					SwdnErrors.SWDN_LOGIN_ERROR_01.name(), SwdnErrors.SWDN_LOGIN_ERROR_01.getErrorMessage());
		}

		LoginResponse loginResponse = new LoginResponse();
		loginResponse.setEmail(userDto.getEmail());
		loginResponse.setFirstName(userEntity.getFirstName());
		loginResponse.setLastName(userEntity.getLastName());
     	loginResponse.setStatus(userDto.getUserStatus());
		loginResponse.setUserId(userDto.getId());

		return loginResponse;
	}

}
