package com.swdn.servieimpl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swdn.dao.SeptDao;
import com.swdn.dao.UserDao;
import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserDetailsEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;
import com.swdn.model.response.SeptResponse;
import com.swdn.modle.dto.SeptQuestionDto;
import com.swdn.service.SeptService;

@Service
public class SeptServiceImpl implements SeptService {

	@Autowired
	SeptDao septDao;

	@Autowired
	UserDao userDao;

	public SeptResponse submitSeptDetails(SeptSubmissionRequest septuploadRequest, String userToken)
			throws SwdnException {

		UserSessionEntity userSessionEntity = userDao.getUserDetailsByToken(userToken);

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

		SeptResponse septResponse = new SeptResponse();
		septResponse.setMessage("Sept data uploaded successfully");
		return septResponse;
	}

	@Override
	public SeptResponse generateSeptReport(SeptSubmissionRequest septuploadRequest) throws SwdnException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SeptResponse startSept(String token) throws SwdnException {
		// TODO Auto-generated method stub
		return null;
	}
}
