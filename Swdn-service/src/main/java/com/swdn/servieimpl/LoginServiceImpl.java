package com.swdn.servieimpl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.constants.SeptStatus;
import com.swdn.dao.UserDao;
import com.swdn.entity.Sept;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.ForgetPasswordRequest;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.ForgotPasswordResponse;
import com.swdn.model.response.LoginResponse;
import com.swdn.model.response.LogoutResponse;
import com.swdn.service.UserService;

@Service
public class LoginServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	@Override
	public LoginResponse doLogin(LoginRequest loginRequest) throws SwdnException {

		User userDto = userDao.getUserDetails(loginRequest.getUserName());

		if (userDto == null) {
			throw new SwdnException(SwdnErrors.SWDN_ERROR_01.name(), SwdnErrors.SWDN_ERROR_01.getErrorMessage(),
					SwdnErrors.SWDN_ERROR_01.getErrorMessage());
		}

		if (!loginRequest.getPassword().equals(userDto.getPassword())) {
			throw new SwdnException(SwdnErrors.SWDN_ERROR_02.name(), SwdnErrors.SWDN_ERROR_02.getErrorMessage(),
					SwdnErrors.SWDN_ERROR_02.getErrorMessage());
		}

		UserEntity userEntity = userDao.getUserDetailedInfo(userDto.getId());

		if (userEntity == null) {
			throw new SwdnException(SwdnErrors.SWDN_ERROR_01.name(), SwdnErrors.SWDN_ERROR_01.getErrorMessage(),
					SwdnErrors.SWDN_ERROR_01.getErrorMessage());
		}

		Sept sept = userDao.getSeptDetails(userDto.getId());

		LoginResponse loginResponse = new LoginResponse();
		loginResponse.setEmail(userDto.getEmail());
		loginResponse.setFirstName(userEntity.getFirstName());
		loginResponse.setLastName(userEntity.getLastName());
		loginResponse.setStatus(userDto.getUserStatus());
		loginResponse.setUserId(userDto.getId());
		loginResponse.setIsSeptCompleted(false);
		loginResponse.setUserName(userDto.getUserName());

		if (sept != null) {

			if (sept.getSeptStatus().equalsIgnoreCase(SeptStatus.COMPLETED.name()))
				loginResponse.setIsSeptCompleted(true);

			else if (sept.getSeptStatus().equalsIgnoreCase(SeptStatus.STARTED.name()))
				throw new SwdnException(SwdnErrors.SWDN_ERROR_03.name(), SwdnErrors.SWDN_ERROR_03.getErrorMessage(),
						SwdnErrors.SWDN_ERROR_03.getErrorMessage());
		}

		String token = generateTempToken();
		userDao.setUserLoginStatus(userDto.getId(), token);
		loginResponse.setUserToken(token);
		return loginResponse;
	}

	@Override
	public LogoutResponse doLogout(String userToken) throws SwdnException {
		userDao.setUserStatusLogout(userToken);
		LogoutResponse logoutResponse = new LogoutResponse();
		logoutResponse.setUiMessage("User has been logged out successfully");
		return logoutResponse;
	}

	public String generateTempToken() {
		UUID uuid = UUID.randomUUID();
		String s = Long.toString(uuid.getMostSignificantBits(), 36) + '-'
				+ Long.toString(uuid.getLeastSignificantBits(), 36);
		return s;
	}

	@Override
	public ForgotPasswordResponse forgetPassword(ForgetPasswordRequest forgetPassRequest) throws SwdnException {
		User user = userDao.getUserDetailsByEmailId(forgetPassRequest.getEmailId());
		if (user == null)
			throw new SwdnException(SwdnErrors.SWDN_ERROR_01.name(), SwdnErrors.SWDN_ERROR_01.getErrorMessage(),
					SwdnErrors.SWDN_ERROR_01.getErrorMessage());
		
		ForgotPasswordResponse forgetPasswordResponse =new ForgotPasswordResponse();
		forgetPasswordResponse.setUiMessage("Your password has been sent over to your email id");
		return forgetPasswordResponse;
	}

}
