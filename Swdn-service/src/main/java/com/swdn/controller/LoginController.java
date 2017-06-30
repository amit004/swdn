package com.swdn.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.error.SwdnError;
import com.swdn.exception.SwdnException;
import com.swdn.logger.SwdnLogger;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.SwdnResponse;
import com.swdn.service.UserService;

@RestController
@RequestMapping(value = "v1")
public class LoginController {
	@SuppressWarnings("rawtypes")
	ArrayList septDataArrList;

	@Autowired
	UserService userService;

	@Autowired
	SwdnLogger swdnLogger;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public SwdnResponse login(@RequestBody LoginRequest loginRequest) {

		try {
			return getResponse(userService.doLogin(loginRequest), null);
		} catch (SwdnException exception) {
			swdnLogger.logException(LoginController.class.getSimpleName(), exception);
			return getResponse(null, exception);
		}
	}

	@RequestMapping(value = "logout", method = RequestMethod.POST)
	public SwdnResponse logut(LoginRequest loginRequest) {

		try {
			return getResponse(userService.doLogin(loginRequest), null);
		} catch (SwdnException exception) {
			// put logger in here..
			return getResponse(null, exception);
		}
	}
	

	@RequestMapping(value = "healthCheck", method = RequestMethod.GET)
	public String healthCheck() {

		swdnLogger.debug(LoginController.class.getSimpleName(), "health check");
		return "Service is running";

	}

	private SwdnResponse getResponse(Object object, SwdnException exception) {
		SwdnResponse swdnResponse = new SwdnResponse();
		if (object != null)
			swdnResponse.setData(object);
		else {
			SwdnError swdnError = new SwdnError();
			swdnError.setErrorCode(exception.getErrorCode());
			swdnError.setErrorMessage(exception.getErrorMessage());
			swdnError.setErrorUiMessage(exception.getUiErrorMessage());
			swdnResponse.setError(swdnError);
		}

		return swdnResponse;
	}

}
