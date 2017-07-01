package com.swdn.servieimpl;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.constants.SeptStatus;
import com.swdn.dao.UserDao;
import com.swdn.entity.SeptEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.ForgetPasswordRequest;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.ForgotPasswordResponse;
import com.swdn.model.response.LoginResponse;
import com.swdn.model.response.LogoutResponse;
import com.swdn.modle.dto.TokenDetailsDto;
import com.swdn.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	@Autowired
	TokenServiceImpl tokenService;

	@Override
	public LoginResponse doLogin(LoginRequest loginRequest, TokenDetailsDto tokenDetails) throws SwdnException {

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

		SeptEntity sept = userDao.getSeptDetails(userDto.getId());

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

		Calendar calendar = Calendar.getInstance();
		calendar.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));


		calendar.add(Calendar.MONTH, 1);

		tokenDetails.setTokenExpirationTime(calendar.getTime().toGMTString());

		tokenDetails.setUserName(loginRequest.getUserName());

		userDao.setUserLoginStatus(userDto.getId(), tokenService.encryptToken(tokenDetails));
		loginResponse.setUserToken(tokenDetails.getTokenString());
		return loginResponse;
	}

	@Override
	public LogoutResponse doLogout(String userToken) throws SwdnException {
		userDao.setUserStatusLogout(userToken);
		LogoutResponse logoutResponse = new LogoutResponse();
		logoutResponse.setUiMessage("User has been logged out successfully");
		return logoutResponse;
	}


	@Override
	public ForgotPasswordResponse forgetPassword(ForgetPasswordRequest forgetPassRequest) throws SwdnException {
		User user = userDao.getUserDetailsByEmailId(forgetPassRequest.getEmailId());
		if (user == null)
			throw new SwdnException(SwdnErrors.SWDN_ERROR_01.name(), SwdnErrors.SWDN_ERROR_01.getErrorMessage(),
					SwdnErrors.SWDN_ERROR_01.getErrorMessage());

		ForgotPasswordResponse forgetPasswordResponse = new ForgotPasswordResponse();
		forgetPasswordResponse.setUiMessage("Your password has been sent over to your email id");
		return forgetPasswordResponse;
	}

	@Override
	public String generateToken(TokenDetailsDto tokenGenedationDto) throws SwdnException {
		return null;
	}

}
