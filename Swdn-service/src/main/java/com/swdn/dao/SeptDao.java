package com.swdn.dao;

import java.util.ArrayList;

import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.entity.SeptResultStatementEntity;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;
import com.swdn.model.response.SeptSubmissionResponse;
import com.swdn.modle.dto.SeptCategoryResultDto;

public interface SeptDao {

	public void submitSept(SeptDetailsEntity septuploadRequest) throws SwdnException;
	
	public ArrayList<SeptDetailsEntity> getSeptDetailsForStudent(Integer studentId) throws SwdnException;
	
	public SeptEntityStatus getSeptStatus(SeptSubmissionRequest septuploadRequest) throws SwdnException;

	public void startSeptForUser(SeptSubmissionRequest septuploadRequest) throws SwdnException;
	
	public SeptQuestionEntity getSeptQuestionsById(Integer id) throws SwdnException;

	public SeptResultStatementEntity getSeptResultStatement(SeptSubmissionResponse septSubmissionResponse) throws SwdnException;

}
