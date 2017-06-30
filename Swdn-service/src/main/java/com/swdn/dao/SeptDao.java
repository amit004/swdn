package com.swdn.dao;

import com.swdn.model.request.SeptUploadRequest;

public interface SeptDao {
	//public void setUserStatusLogout(String userToken) throws SwdnException;
	public void setSeptDetails(SeptUploadRequest septuploadRequest);

}
