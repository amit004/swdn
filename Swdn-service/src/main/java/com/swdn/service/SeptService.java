package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;
import com.swdn.model.response.SeptResponse;

public interface SeptService {
	
	public SeptResponse startSept(String token) throws SwdnException;

	public SeptResponse submitSeptDetails(SeptSubmissionRequest septuploadRequest,String userToken) throws SwdnException;
	
	public SeptResponse generateSeptReport(SeptSubmissionRequest septuploadRequest) throws SwdnException;


}
