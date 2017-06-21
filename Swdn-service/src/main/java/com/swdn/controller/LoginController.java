package com.swdn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.LoginRequest;
import com.swdn.responsemodels.SwdnResponse;
import com.swdn.service.LoginService;

@RestController
@RequestMapping(value = "/v1/")
public class LoginController {

	@Autowired
	LoginService LoginService;

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public SwdnResponse login(LoginRequest loginRequest) {

		try {
			return getResponse(LoginService.doLogin(loginRequest), null);
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
			swdnResponse.setData(exception);

		return swdnResponse;
	}

}
