package com.swdn.dao;

import java.util.ArrayList;

import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.entity.SeptResultStatementEntity;
import com.swdn.model.response.SeptSubmissionResponse;

public interface SeptDao {

	void submitSept(SeptDetailsEntity septuploadRequest);

	ArrayList<SeptDetailsEntity> getSeptDetailsForStudent(Integer studentId);

	void startSeptForUser(SeptEntityStatus septEntityStatus);

	SeptQuestionEntity getSeptQuestionsById(Integer id);

	SeptResultStatementEntity getSeptResultStatement(SeptSubmissionResponse septSubmissionResponse);

	void deleteSept(Integer studentId);

	SeptEntityStatus getSeptStatusDetails(Integer userId);

}
