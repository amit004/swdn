package com.swdn.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.SeptDao;
import com.swdn.entity.SeptUpload;
import com.swdn.model.request.SeptUploadRequest;

@Repository
@Transactional
public class SeptDaoImpl implements SeptDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void setSeptDetails(SeptUploadRequest septuploadRequest) {
		Session session = getSession();
		SeptUpload septUploadEntity = new SeptUpload();
		septUploadEntity.setUserId(septuploadRequest.getUserID());
		septUploadEntity.setQuestionID(septuploadRequest.getQuestion_id());
		septUploadEntity.setQuestionSequence(septuploadRequest.getQuestion_sequence());
		septUploadEntity.setRightAnswerText(septuploadRequest.getQuestion_answer());
		septUploadEntity.setRightAnswerID(septuploadRequest.getQuestion_answer_option());
		// need to add more fields
		septUploadEntity.setAnswer("");
		septUploadEntity.setAnswerText("");
		septUploadEntity.setAnswerResult(2);
		septUploadEntity.setStudentEnroll("");
		septUploadEntity.setStudentName("");
		septUploadEntity.setSchoolName("");
		septUploadEntity.setSchoolCode("");
		septUploadEntity.setClassID(0);
		septUploadEntity.setSection("");
		septUploadEntity.setStartTime("");
		septUploadEntity.setEndTime("");
		septUploadEntity.setAttemptDate("2017-10-22 12:00:23");
		septUploadEntity.setAcademicYear("");
		//session.save(septUploadEntity);
		session.saveOrUpdate(septUploadEntity);
		
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

}
