package com.swdn.servieimpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.constants.SeptQuestionsType;
import com.swdn.dao.SeptDao;
import com.swdn.dao.UserDao;
import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.entity.SeptResultStatementEntity;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;
import com.swdn.model.response.SeptResponse;
import com.swdn.model.response.SeptSubmissionResponse;
import com.swdn.modle.dto.SeptCategoryResultDto;
import com.swdn.modle.dto.SeptQuestionDto;
import com.swdn.service.SeptService;

@Service
public class SeptServiceImpl implements SeptService {

	@Autowired
	SeptDao septDao;

	@Autowired
	UserDao userDao;

	public SeptSubmissionResponse submitSeptDetails(SeptSubmissionRequest septuploadRequest, String userToken)
			throws SwdnException {

		UserSessionEntity userSessionEntity = userDao.getUserDetailsByToken(userToken);

		if (userSessionEntity == null) {
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(),
					SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage(), SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage());
		}

		StudentEntity studentDetails = userDao.getStudentDetails(userSessionEntity.getUserId());

		Calendar calendar = Calendar.getInstance();
		calendar.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String attemptDate = sdf.format(calendar.getTime());

		for (SeptQuestionDto septQuestion : septuploadRequest.getSeptSubmission()) {

			SeptQuestionEntity septQuestionEntity = septDao.getSeptQuestionsById(septQuestion.getQuestionId());

			SeptDetailsEntity septDetailsEntity = new SeptDetailsEntity();
			septDetailsEntity.setStudentId(studentDetails.getStudentId());

			septDetailsEntity.setQuestionSequence(septQuestion.getQuestionSequence());
			septDetailsEntity.setQuestionId(septQuestion.getQuestionId());
			septDetailsEntity.setAnswerText(septQuestion.getAttemptedAnswerText());
			septDetailsEntity.setRightAnswerID(septQuestionEntity.getAnswerId());
			septDetailsEntity.setRightAnswerText(septQuestionEntity.getAnswer());
			septDetailsEntity.setAnswer(septQuestion.getAttemptedAnswerText());

			septDetailsEntity.setEndTime(septQuestion.getEndTime());
			septDetailsEntity.setStartTime(septQuestion.getStartTime());

			septDetailsEntity.setAnswerResult(0);

			if (septQuestionEntity.getAnswerId() == septQuestion.getAttemptedAnswerId())
				septDetailsEntity.setAnswerResult(1);

			StringBuilder studentName = new StringBuilder(studentDetails.getFirstName());
			studentName.append(studentDetails.getLastName());

			septDetailsEntity.setStudentName(studentName.toString());
			septDetailsEntity.setSchoolName(studentDetails.getSchoolName());
			septDetailsEntity.setSchoolCode(studentDetails.getSchoolCode());
			septDetailsEntity.setAcademicYear(studentDetails.getAcademicYear());
			septDetailsEntity.setSection(studentDetails.getSection());
			septDetailsEntity.setStudentEnroll(studentDetails.getEnrollNo());
			septDetailsEntity.setAttemptDate(attemptDate);

			septDao.submitSept(septDetailsEntity);
		}

		SeptSubmissionResponse septResponse = generateSeptReport(studentDetails.getStudentId());
		return septResponse;
	}

	@Override
	public SeptSubmissionResponse generateSeptReport(Integer studentId) throws SwdnException {

		SeptSubmissionResponse septSubmissionResponse = new SeptSubmissionResponse();

		ArrayList<SeptDetailsEntity> septResult = septDao.getSeptDetailsForStudent(studentId);

		if (septResult == null) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_01.name(),
					SwdnErrors.SWDN_SEPT_ERROR_01.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_01.getErrorMessage());
		}

		septSubmissionResponse.setTotalQuestions(9);
		septSubmissionResponse.setQuestionsAttempted(septResult.size());

		SeptCategoryResultDto auditoryResult = new SeptCategoryResultDto();
		auditoryResult.setTotalQuestions(3);

		SeptCategoryResultDto visualResult = new SeptCategoryResultDto();
		visualResult.setTotalQuestions(3);

		SeptCategoryResultDto kinestheticResult = new SeptCategoryResultDto();
		kinestheticResult.setTotalQuestions(3);

		for (SeptDetailsEntity attemptedSept : septResult) {

			SeptQuestionEntity septQuestionEntity = septDao.getSeptQuestionsById(attemptedSept.getQuestionId());

			// for audio
			if (septQuestionEntity.getAvkCategory().equals(SeptQuestionsType.Auditory.name())) {
				auditoryResult.setTotalAttempted(auditoryResult.getTotalAttempted() + 1);

				if (attemptedSept.getAnswerResult() == 1)
					auditoryResult.setCorrectAttemepted(auditoryResult.getCorrectAttemepted() + 1);
			}

			// for visual
			else if (septQuestionEntity.getAvkCategory().equals(SeptQuestionsType.Visual.name())) {

				visualResult.setTotalAttempted(visualResult.getTotalAttempted() + 1);

				if (attemptedSept.getAnswerResult() == 1)
					visualResult.setCorrectAttemepted(auditoryResult.getCorrectAttemepted() + 1);
			}

			// for audio
			else if (septQuestionEntity.getAvkCategory().equals(SeptQuestionsType.Kinesthetic.name())) {

				kinestheticResult.setTotalAttempted(kinestheticResult.getTotalAttempted() + 1);

				if (attemptedSept.getAnswerResult() == 1)
					kinestheticResult.setCorrectAttemepted(auditoryResult.getCorrectAttemepted() + 1);
			}
		}

		// generate percentage for each category
		// for audio
		float percentage;

		if (auditoryResult.getTotalAttempted() != 0) {
			percentage = (auditoryResult.getCorrectAttemepted() / auditoryResult.getTotalAttempted()) * 100;
			auditoryResult.setPercentage(percentage);
		}

		septSubmissionResponse.setAuditoryResult(auditoryResult);

		// for visual
		if (visualResult.getTotalAttempted() != 0) {
			percentage = (visualResult.getCorrectAttemepted() / visualResult.getTotalAttempted()) * 100;
			visualResult.setPercentage(percentage);
		}

		septSubmissionResponse.setVisualResult(visualResult);

		// for kinesthetic
		if (kinestheticResult.getTotalAttempted() != 0) {
			percentage = (kinestheticResult.getCorrectAttemepted() / kinestheticResult.getTotalAttempted()) * 100;
			kinestheticResult.setPercentage(percentage);
		}
		septSubmissionResponse.setKinestheticResult(kinestheticResult);

		// now get statement
		SeptResultStatementEntity result = septDao.getSeptResultStatement(septSubmissionResponse);

		if (result != null)
			septSubmissionResponse.setResultStatement(result.getStatements());
		return septSubmissionResponse;
	}

	@Override
	public SeptResponse startSept(String token) throws SwdnException {

		return null;
	}
}
