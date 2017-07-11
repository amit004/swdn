package com.swdn.servieimpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.swdn.constants.SeptProfile;
import com.swdn.constants.SeptQuestionsType;
import com.swdn.constants.SeptStatus;
import com.swdn.dao.SeptDao;
import com.swdn.dao.UserDao;
import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.entity.SeptResultStatementEntity;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.logger.SwdnLogger;
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

	@Autowired
	SwdnLogger swdnLogger;

	@Value("${SEPT.submission.time.diff}")
	int septSubmissionTImeDiff;

	public SeptSubmissionResponse submitSeptDetails(SeptSubmissionRequest septuploadRequest, String userToken)
			throws SwdnException {

		if (septuploadRequest.getSeptSubmission().isEmpty() || septuploadRequest.getSeptSubmission().size() < 9
				|| septuploadRequest.getSeptSubmission().size() > 9) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_00.name(),
					SwdnErrors.SWDN_SEPT_ERROR_00.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_00.getErrorMessage());
		}

		UserSessionEntity userSessionEntity = userDao.getUserSessionByToken(userToken);

		if (userSessionEntity == null) {
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(),
					SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage(), SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage());
		}

		StudentEntity studentDetails = userDao.getStudentDetails(userSessionEntity.getUserId());

		SeptEntityStatus septEntityStatus = septDao.getSeptStatusDetails(studentDetails.getStudentId());

		if (septEntityStatus == null) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_05.name(),
					SwdnErrors.SWDN_SEPT_ERROR_05.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_05.getErrorMessage());
		}

		else if (septEntityStatus.getSeptStatus().equalsIgnoreCase(SeptStatus.COMPLETED.name())) {

			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_03.name(),
					SwdnErrors.SWDN_SEPT_ERROR_03.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_03.getErrorMessage());
		}

		String startedTime = septEntityStatus.getStartedDate();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date septStartedTime;
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));

		String attemptDate = sdf.format(calendar.getTime());

		try {
			septStartedTime = sdf.parse(startedTime);
		} catch (ParseException e) {
			swdnLogger.debug(this.getClass().getSimpleName(), e.getMessage());
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_03.name(), e.getMessage(), e.getMessage());
		}

		long diff = septStartedTime.getTime() - calendar.getTime().getTime();

		long diffMinutes = diff / (60 * 1000) % 60;

		if (diffMinutes > septSubmissionTImeDiff) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_04.name(),
					SwdnErrors.SWDN_SEPT_ERROR_04.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_04.getErrorMessage());
		}

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

		septEntityStatus.setSeptStatus(SeptStatus.COMPLETED.name());
		septDao.startSeptForUser(septEntityStatus);

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
					visualResult.setCorrectAttemepted(visualResult.getCorrectAttemepted() + 1);
			}

			// for Kinesthetic
			else if (septQuestionEntity.getAvkCategory().equals(SeptQuestionsType.Kinesthetic.name())) {

				kinestheticResult.setTotalAttempted(kinestheticResult.getTotalAttempted() + 1);

				if (attemptedSept.getAnswerResult() == 1)
					kinestheticResult.setCorrectAttemepted(kinestheticResult.getCorrectAttemepted() + 1);
			}
		}

		// generate percentage for each category
		// for audio
		float percentage;

		if (auditoryResult.getTotalAttempted() != 0) {
			percentage = (auditoryResult.getCorrectAttemepted() * 100) / auditoryResult.getTotalAttempted();
			auditoryResult.setPercentage(percentage);
		}

		septSubmissionResponse.setAuditoryResult(auditoryResult);

		// for visual
		if (visualResult.getTotalAttempted() != 0) {
			percentage = (visualResult.getCorrectAttemepted() * 100) / visualResult.getTotalAttempted();
			visualResult.setPercentage(percentage);
		}

		septSubmissionResponse.setVisualResult(visualResult);

		// for kinesthetic
		if (kinestheticResult.getTotalAttempted() != 0) {
			percentage = (kinestheticResult.getCorrectAttemepted() * 100) / kinestheticResult.getTotalAttempted();
			kinestheticResult.setPercentage(percentage);
		}
		septSubmissionResponse.setKinestheticResult(kinestheticResult);

		// now get statement
		SeptResultStatementEntity result = septDao.getSeptResultStatement(septSubmissionResponse);

		if (result != null)
			septSubmissionResponse.setResultStatement(result.getStatements());

		int correctAttemtped = kinestheticResult.getCorrectAttemepted() + auditoryResult.getCorrectAttemepted()
				+ visualResult.getCorrectAttemepted();

		percentage = (correctAttemtped * 100) / septSubmissionResponse.getTotalQuestions();

		septSubmissionResponse.setNetResultPercentage(percentage);
		septSubmissionResponse.setCorrectAnswerAttempted(correctAttemtped);
		septSubmissionResponse.setSeptProfile(getProfile(correctAttemtped));

		return septSubmissionResponse;
	}

	private String getProfile(int totalCorrectAttempted) {

		if (totalCorrectAttempted <= 3)
			return SeptProfile.BEGINNER.name();

		else if (totalCorrectAttempted > 3 || totalCorrectAttempted <= 5)
			return SeptProfile.AVERAGE.name();

		else if (totalCorrectAttempted >= 6 || totalCorrectAttempted <= 7)
			return SeptProfile.ADVANCE.name();

		else
			return SeptProfile.PRFOICIENT.name();

	}

	@Override
	public SeptResponse startSept(String token) throws SwdnException {

		UserSessionEntity user = userDao.getUserSessionByToken(token);

		StudentEntity studentEntity = userDao.getStudentDetails(user.getUserId());

		SeptEntityStatus septEntityStatus = septDao.getSeptStatusDetails(studentEntity.getStudentId());

		if (septEntityStatus != null && septEntityStatus.getSeptStatus().equalsIgnoreCase(SeptStatus.STARTED.name())) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_02.name(),
					SwdnErrors.SWDN_SEPT_ERROR_02.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_02.getErrorMessage());
		} else if (septEntityStatus != null
				&& septEntityStatus.getSeptStatus().equalsIgnoreCase(SeptStatus.COMPLETED.name())) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_03.name(),
					SwdnErrors.SWDN_SEPT_ERROR_03.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_03.getErrorMessage());
		}

		septEntityStatus = new SeptEntityStatus();
		septEntityStatus.setSeptStatus(SeptStatus.STARTED.name());
		septEntityStatus.setStudentId(studentEntity.getStudentId());

		septDao.startSeptForUser(septEntityStatus);

		SeptResponse septResponse = new SeptResponse();
		septResponse.setSeptStatus(SeptStatus.STARTED);
		septResponse.setUserName(studentEntity.getUserName());
		septResponse.setFirstName(studentEntity.getFirstName());
		septResponse.setLastName(studentEntity.getLastName());
		return septResponse;
	}

	@Override
	public String deleteUserSept(String token) throws SwdnException {

		UserSessionEntity user = userDao.getUserSessionByToken(token);
		StudentEntity studentEntity = userDao.getStudentDetails(user.getUserId());

		septDao.deleteSept(studentEntity.getStudentId());

		return "user's sept details deleted successfully";
	}

	@Override
	public SeptSubmissionResponse getSeptReport(String userToken) throws SwdnException {

		UserSessionEntity userSessionEntity = userDao.getUserSessionByToken(userToken);

		if (userSessionEntity == null) {
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(),
					SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage(), SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage());
		}

		StudentEntity studentDetails = userDao.getStudentDetails(userSessionEntity.getUserId());

		SeptEntityStatus septEntityStatus = septDao.getSeptStatusDetails(studentDetails.getStudentId());

		if (septEntityStatus == null) {
			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_05.name(),
					SwdnErrors.SWDN_SEPT_ERROR_05.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_05.getErrorMessage());
		}

		else if (septEntityStatus.getSeptStatus().equalsIgnoreCase(SeptStatus.STARTED.name())) {

			throw new SwdnException(SwdnErrors.SWDN_SEPT_ERROR_06.name(),
					SwdnErrors.SWDN_SEPT_ERROR_06.getErrorMessage(), SwdnErrors.SWDN_SEPT_ERROR_06.getErrorMessage());
		}

		return generateSeptReport(studentDetails.getStudentId());
	}
}
