package com.swdn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.logger.SwdnLogger;
import com.swdn.model.request.ForgetPasswordRequest;
import com.swdn.model.request.LoginRequest;
import com.swdn.model.response.SwdnResponse;
import com.swdn.service.UserService;
import com.swdn.utils.SwdnUtils;

@RestController
@RequestMapping(value = "v1")
public class LoginController {

	@Autowired
	UserService userService;

	@Autowired
	SwdnLogger swdnLogger;

	@Autowired
	SwdnUtils swdnUtils;

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public SwdnResponse login(@Valid @RequestBody LoginRequest loginRequest, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return swdnUtils.handleValidationException(SwdnErrors.SWDN_LOGIN_VALIDATION_ERR_00, bindingResult);
		}
		try {
			return swdnUtils.getResponse(userService.doLogin(loginRequest), null);
		} catch (SwdnException exception) {
			swdnLogger.logException(LoginController.class.getSimpleName(), exception);
			return swdnUtils.getResponse(null, exception);
		}
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public SwdnResponse logut(HttpServletRequest request) {

		try {

			String userToken = request.getHeader("userToken");

			if (userToken == null) {
				return swdnUtils.getResponse(null,
						new SwdnException(SwdnErrors.SWDN_LOGOUT_ERROR_01.name(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage()));
			}

			return swdnUtils.getResponse(userService.doLogout(userToken), null);
		} catch (SwdnException exception) {
			swdnLogger.logException(LoginController.class.getSimpleName(), exception);
			return swdnUtils.getResponse(null, exception);
		}
	}

	@RequestMapping(value = "forgotPassword", method = RequestMethod.POST)
	public SwdnResponse forgetPass(@RequestBody @Valid ForgetPasswordRequest forgetPasswordRequest,BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return swdnUtils.handleValidationException(SwdnErrors.SWDN_LOGIN_VALIDATION_ERR_00, bindingResult);
		}
		
		try {
			return swdnUtils.getResponse(userService.forgetPassword(forgetPasswordRequest), null);
		} catch (SwdnException exception) {
			swdnLogger.logException(LoginController.class.getSimpleName(), exception);
			return swdnUtils.getResponse(null, exception);
		}
	}

	@RequestMapping(value = "healthCheck", method = RequestMethod.GET)
	public String healthCheck() {

		swdnLogger.debug(LoginController.class.getSimpleName(), "health check");
		return "Service is running";

	}

}
