package com.swdn.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.logger.SwdnLogger;
import com.swdn.model.request.SeptReportRequest;
import com.swdn.model.request.SeptSubmissionRequest;
import com.swdn.model.response.SwdnResponse;
import com.swdn.service.SeptService;
import com.swdn.utils.SwdnUtils;

@RestController
@RequestMapping(value = "v1")
public class SeptController {

	@Autowired
	SeptService septService;

	@Autowired
	SwdnUtils swdnUtils;

	@Autowired
	SwdnLogger swdnLogger;

	@RequestMapping(value = "startSept", method = RequestMethod.GET)
	public SwdnResponse startSept(HttpServletRequest httpServletRequest) {

		try {
			String userToken = httpServletRequest.getHeader("userToken");

			if (userToken == null) {
				return swdnUtils.getResponse(null,
						new SwdnException(SwdnErrors.SWDN_LOGOUT_ERROR_01.name(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage()));
			}
			return swdnUtils.getResponse(septService.startSept(userToken), null);

		} catch (SwdnException exception) {
			swdnLogger.logException(SeptController.class.getSimpleName(), exception);
			return swdnUtils.getResponse(null, exception);
		}
	}

	@RequestMapping(value = "getSeptReport", method = RequestMethod.POST)
	public SwdnResponse septUpload(@RequestBody SeptReportRequest septReportRequest,
			HttpServletRequest httpServletRequest) throws SwdnException {

		try {
			String userToken = httpServletRequest.getHeader("userToken");

			if (userToken == null) {
				return swdnUtils.getResponse(null,
						new SwdnException(SwdnErrors.SWDN_LOGOUT_ERROR_01.name(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage()));
			}
			return swdnUtils.getResponse(septService.generateSeptReport(septReportRequest.getStudentId()), null);

		} catch (SwdnException exception) {
			swdnLogger.logException(SeptController.class.getSimpleName(), exception);
			return swdnUtils.getResponse(null, exception);
		}
	}

	@RequestMapping(value = "submitSept", method = RequestMethod.POST)
	public SwdnResponse septUpload(@RequestBody SeptSubmissionRequest septuploadRequest,
			HttpServletRequest httpServletRequest) throws SwdnException {

		try {
			String userToken = httpServletRequest.getHeader("userToken");

			if (userToken == null) {
				return swdnUtils.getResponse(null,
						new SwdnException(SwdnErrors.SWDN_LOGOUT_ERROR_01.name(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage(),
								SwdnErrors.SWDN_LOGOUT_ERROR_01.getErrorMessage()));
			}
			return swdnUtils.getResponse(septService.submitSeptDetails(septuploadRequest, userToken), null);

		} catch (SwdnException exception) {
			swdnLogger.logException(SeptController.class.getSimpleName(), exception);
			return swdnUtils.getResponse(null, exception);
		}
	}
}
