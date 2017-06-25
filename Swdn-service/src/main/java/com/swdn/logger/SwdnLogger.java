package com.swdn.logger;

import org.springframework.stereotype.Service;

import com.swdn.controller.LoginController;
import com.swdn.exception.SwdnException;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SwdnLogger {

	public void debug(String Tag, String message) {
		StringBuilder stringBuilder = new StringBuilder(Tag);
		stringBuilder.append(Tag);
		stringBuilder.append(message);

		log.debug(message);

	}

	public void logException(String Tag, SwdnException swdnException) {

		StringBuilder stringBuilder = new StringBuilder(Tag);
		stringBuilder.append("=> ").append(swdnException.getErrorCode());
		stringBuilder.append("=> ").append(swdnException.getErrorMessage());

		log.error(LoginController.class.getName(), stringBuilder.toString());

	}

}
