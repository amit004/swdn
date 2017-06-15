package com.swdn.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.requestmodels.LoginRequest;
import com.swdn.responsemodels.LoginResponse;

@RestController
@RequestMapping(value = "/v1/")
public class LoginController {

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public LoginResponse login(LoginRequest loginRequest) {

		loginRequest.getUserName();
		return null;

	}

}
