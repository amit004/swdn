package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.requestmodels.UpdateProfileRequest;
import com.swdn.responsemodels.UpdateProfileResponse;

public interface UpdateProfileService {
	public UpdateProfileResponse doUpdateProfile(UpdateProfileRequest updateProfileRequest) throws SwdnException;

}
