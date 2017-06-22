package com.swdn.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.ForgetPasswordRequest;
import com.swdn.requestmodels.LoginRequest;
import com.swdn.requestmodels.UpdateProfileRequest;
import com.swdn.responsemodels.SwdnResponse;
import com.swdn.service.ForgetPasswordService;
import com.swdn.service.LoginService;
import com.swdn.service.UpdateProfileService;
@RestController
@RequestMapping(value = "/v1/")
public class LoginController {

	@Autowired
	LoginService loginService;
	UpdateProfileService updateProfileService;
	ForgetPasswordService forgetPasswordService;
	
	static final Logger logger=Logger.getLogger(RestController.class);

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public SwdnResponse login(LoginRequest loginRequest) {

		try {
			return getResponse(loginService.doLogin(loginRequest), null);
		} catch (SwdnException exception) {
			// put logger in here..
			return getResponse(null, exception);
		}
	}
	
	@RequestMapping(value = "updateProfile", method = RequestMethod.POST)
	public SwdnResponse updateProfile(UpdateProfileRequest updateProfileRequest) {

		try {
			return getResponse(updateProfileService.doUpdateProfile(updateProfileRequest), null);
		} catch (SwdnException exception) {
			// put logger in here..
			return getResponse(null, exception);
		}
	}
	
	@RequestMapping(value = "forgetpassword", method = RequestMethod.POST)
	public SwdnResponse forgetPassword(ForgetPasswordRequest forgetPasswordRequest) {
		
		try {
			return getResponse(forgetPasswordService.doForgetPassword(forgetPasswordRequest), null);
		} catch (SwdnException exception) {
			// put logger in here..
			return getResponse(null, exception);
		}
	}
	
	
	

	private SwdnResponse getResponse(Object object, SwdnException exception) {
		SwdnResponse swdnResponse = new SwdnResponse();
		if (object != null)
			swdnResponse.setData(object);
		else
			swdnResponse.setSwdnException(exception);

		return swdnResponse;
	}

}
