package com.swdn.service;

import java.util.ArrayList;

import com.swdn.exception.SwdnException;

public interface SeptService {
	@SuppressWarnings("rawtypes")
	public ArrayList septParseData(String SeptInputJson) throws SwdnException;

	@SuppressWarnings("rawtypes")
	public Object septUploadData(int userID, ArrayList septDataArrList) throws SwdnException;

}
