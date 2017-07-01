package com.swdn.dao;

import com.swdn.entity.SeptEntity;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptUploadRequest;

public interface SeptDao {

	public void submitSeptDetails(SeptUploadRequest septuploadRequest) throws SwdnException;

	public SeptEntity getSeptDetails(SeptUploadRequest septuploadRequest) throws SwdnException;

	public void startSeptFOrUser(SeptUploadRequest septuploadRequest) throws SwdnException;

}
