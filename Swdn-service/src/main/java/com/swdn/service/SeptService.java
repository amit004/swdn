package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptUploadRequest;
import com.swdn.model.response.SeptResponse;

public interface SeptService {
	
	public SeptResponse startSept(String token) throws SwdnException;

	public SeptResponse submitSeptDetails(SeptUploadRequest septuploadRequest) throws SwdnException;
	
	
	public SeptResponse generateSeptReport(SeptUploadRequest septuploadRequest) throws SwdnException;


}
