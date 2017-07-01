package com.swdn.servieimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.dao.SeptDao;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptUploadRequest;
import com.swdn.model.response.SeptResponse;
import com.swdn.service.SeptService;

@Service
public class SeptServiceImpl implements SeptService {

	@Autowired
	SeptDao septDao;
	
	@Override
	public SeptResponse startSept(String token) throws SwdnException {
		return null;
	}

	public SeptResponse submitSeptDetails(SeptUploadRequest septuploadRequest) throws SwdnException {
		septDao.submitSeptDetails(septuploadRequest);
		SeptResponse septResponse = new SeptResponse();
		septResponse.setMessage("Sept data uploaded successfully");
		return septResponse;
	}

	

	@Override
	public SeptResponse generateSeptReport(SeptUploadRequest septuploadRequest) throws SwdnException {
		// TODO Auto-generated method stub
		return null;
	}
}
