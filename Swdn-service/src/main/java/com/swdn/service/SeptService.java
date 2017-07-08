package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;
import com.swdn.model.response.SeptResponse;
import com.swdn.model.response.SeptSubmissionResponse;

public interface SeptService {
	
	public SeptResponse startSept(String token) throws SwdnException;

	public SeptSubmissionResponse submitSeptDetails(SeptSubmissionRequest septuploadRequest,String userToken) throws SwdnException;
	
	public SeptSubmissionResponse generateSeptReport(Integer studentId) throws SwdnException;
	
}
