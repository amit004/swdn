package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.ForgetPasswordRequest;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.ForgotPasswordResponse;
import com.swdn.model.response.LoginResponse;
import com.swdn.model.response.LogoutResponse;
import com.swdn.modle.dto.SchoolDetailsDto;
import com.swdn.modle.dto.TokenDetailsDto;

public interface UserService {

	public LoginResponse doLogin(LoginRequest loginRequest, TokenDetailsDto tokenDetails) throws SwdnException;

	public LogoutResponse doLogout(String userToken) throws SwdnException;

	public ForgotPasswordResponse forgetPassword(ForgetPasswordRequest userToken) throws SwdnException;

	SchoolDetailsDto getSchoolDetails(String schoolCode) throws SwdnException;

}
