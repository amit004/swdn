package com.swdn.service;

import java.util.ArrayList;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptUploadRequest;

public interface SeptService {
	@SuppressWarnings("rawtypes")
	public ArrayList septParseData(String SeptInputJson) throws SwdnException;

	@SuppressWarnings("rawtypes")
	public Object septUploadData(SeptUploadRequest septuploadRequest) throws SwdnException;

}
