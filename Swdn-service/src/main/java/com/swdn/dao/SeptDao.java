package com.swdn.dao;

import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;

public interface SeptDao {

	public void submitSept(SeptDetailsEntity septuploadRequest) throws SwdnException;

	public SeptEntityStatus getSeptStatus(SeptSubmissionRequest septuploadRequest) throws SwdnException;

	public void startSeptForUser(SeptSubmissionRequest septuploadRequest) throws SwdnException;
	
	public SeptQuestionEntity getSeptQuestionsById(Integer id) throws SwdnException;


}
