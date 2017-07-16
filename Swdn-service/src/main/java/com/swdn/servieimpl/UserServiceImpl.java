package com.swdn.servieimpl;

import java.util.Calendar;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.constants.SeptStatus;
import com.swdn.constants.UserType;
import com.swdn.dao.SeptDao;
import com.swdn.dao.UserDao;
import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserDetailsEntity;
import com.swdn.entity.UserSessionEntity;
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
	SeptDao septDao;

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

		LoginResponse loginResponse = null;

		if (userDto.getUserType().equalsIgnoreCase(UserType.STUDENT.getUserType())) {

			StudentEntity studentEntity = userDao.getStudentDetails(userDto.getId());

			if (studentEntity == null) {
				throw new SwdnException(SwdnErrors.SWDN_ERROR_01.name(), SwdnErrors.SWDN_ERROR_01.getErrorMessage(),
						SwdnErrors.SWDN_ERROR_01.getErrorMessage());
			}

			loginResponse = getStudentResponse(studentEntity);

			SeptEntityStatus sept = septDao.getSeptStatusDetails(studentEntity.getStudentId());
			if (sept != null) {
				if (sept.getSeptStatus().equalsIgnoreCase(SeptStatus.COMPLETED.name()))
					loginResponse.setIsSeptCompleted(true);

				else if (sept.getSeptStatus().equalsIgnoreCase(SeptStatus.STARTED.name()))
					throw new SwdnException(SwdnErrors.SWDN_ERROR_03.name(), SwdnErrors.SWDN_ERROR_03.getErrorMessage(),
							SwdnErrors.SWDN_ERROR_03.getErrorMessage());
			}

		} else {

			UserDetailsEntity userEntity = userDao.getUserDetailedInfo(userDto.getId());

			if (userEntity == null) {
				throw new SwdnException(SwdnErrors.SWDN_ERROR_01.name(), SwdnErrors.SWDN_ERROR_01.getErrorMessage(),
						SwdnErrors.SWDN_ERROR_01.getErrorMessage());
			}
			loginResponse = getUserResponse(userEntity);
		}

		loginResponse.setUserType(userDto.getUserType());

		Calendar calendar = Calendar.getInstance();
		calendar.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));

		calendar.add(Calendar.MONTH, 1);

		tokenDetails.setTokenExpirationTime(calendar.getTime().toGMTString());

		tokenDetails.setUserName(loginRequest.getUserName());

		UserSessionEntity userSession = userDao.getUserSessionByUserId(userDto.getId());

		if (userSession == null) {
			userSession = new UserSessionEntity();
			userSession.setUserId(userDto.getId());
			userSession.setUserTypeId(4);
			userSession.setLoginStatus(1);
			userSession.setSystemIp(tokenDetails.getLoginIp());
			userSession.setAgent(tokenDetails.getAgent());
			userSession.setAndroidGsmId("N/A");
			userSession.setIosGsmId("N/A");
			userSession.setStatus(1);

		}

		tokenDetails = tokenService.encryptToken(tokenDetails);

		userSession.setLoginSessionId(tokenDetails.getTokenString());

		userDao.setUserLoginStatus(userSession);
		loginResponse.setUserToken(tokenDetails.getTokenString());
		return loginResponse;
	}

	private LoginResponse getStudentResponse(StudentEntity studentEntity) {

		LoginResponse loginResponse = new LoginResponse();
		loginResponse.setEmail(studentEntity.getEmail());
		loginResponse.setFirstName(studentEntity.getFirstName());
		loginResponse.setLastName(studentEntity.getLastName());
		loginResponse.setIsSeptCompleted(false);
		loginResponse.setUserName(studentEntity.getUserName());
		loginResponse.setPicUrl(studentEntity.getPhotoUrl());
		loginResponse.setClassName(studentEntity.getClassName());
		loginResponse.setAddress(studentEntity.getAddress());
		loginResponse.setCity(studentEntity.getCity());
		loginResponse.setState(studentEntity.getState());
		loginResponse.setMotherName(studentEntity.getMotherName());
		loginResponse.setFatherName(studentEntity.getFatherName());
		loginResponse.setEmail(studentEntity.getEmail());
		loginResponse.setPhone(studentEntity.getContactNumber());
		loginResponse.setPincode(studentEntity.getPinCode());
		loginResponse.setGender(studentEntity.getGender());
		loginResponse.setSection(studentEntity.getSection());
		return loginResponse;

	}

	private LoginResponse getUserResponse(UserDetailsEntity userEntity) {

		LoginResponse loginResponse = new LoginResponse();
		loginResponse.setEmail(userEntity.getEmail());
		loginResponse.setFirstName(userEntity.getFirstName());
		loginResponse.setLastName(userEntity.getLastName());
		loginResponse.setIsSeptCompleted(false);
		loginResponse.setUserName(userEntity.getUserName());
		loginResponse.setPicUrl(userEntity.getPhotoUrl());
		return loginResponse;

	}

	@Override
	public LogoutResponse doLogout(String userToken) throws SwdnException {

		UserSessionEntity userSessionEntity = userDao.getUserSessionByToken(userToken);

		if (userSessionEntity == null)
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(),
					SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage(), SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage());

		userSessionEntity.setLoginSessionId("");

		userDao.setUserStatusLogout(userSessionEntity);

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

	

}
