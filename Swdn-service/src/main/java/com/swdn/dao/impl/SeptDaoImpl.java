package com.swdn.dao.impl;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.SeptDao;
import com.swdn.entity.SeptDetailsEntity;
import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.SeptQuestionEntity;
import com.swdn.entity.SeptResultStatementEntity;
import com.swdn.exception.SwdnException;
import com.swdn.model.response.SeptSubmissionResponse;

@Repository
@Transactional
public class SeptDaoImpl implements SeptDao {

	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void submitSept(SeptDetailsEntity septDetailsEntity) throws SwdnException {
		getSession().save(septDetailsEntity);
	}

	@Override
	public SeptQuestionEntity getSeptQuestionsById(Integer id) throws SwdnException {
		Criteria criteria = getSession().createCriteria(SeptQuestionEntity.class);
		SeptQuestionEntity septQuestionEntity = (SeptQuestionEntity) criteria.add(Restrictions.eq("id", id))
				.uniqueResult();
		return septQuestionEntity;
	}

	@Override
	public ArrayList<SeptDetailsEntity> getSeptDetailsForStudent(Integer studentId) throws SwdnException {

		Session session = getSession();

		ArrayList<SeptDetailsEntity> seDetailsEntities = (ArrayList<SeptDetailsEntity>) getSession()
				.createQuery("from SeptDetailsEntity where studentId = :studentId").setParameter("studentId", studentId)
				.list();
		return seDetailsEntities;
	}

	@Override
	public SeptResultStatementEntity getSeptResultStatement(SeptSubmissionResponse septSubmissionResponse)
			throws SwdnException {

		Criteria criteria = getSession().createCriteria(SeptResultStatementEntity.class);

		SeptResultStatementEntity septResultStatementEntity = (SeptResultStatementEntity) criteria
				.add(Restrictions.eq("auditory", septSubmissionResponse.getAuditoryResult().getCorrectAttemepted()))
				.add(Restrictions.eq("visual", septSubmissionResponse.getVisualResult().getCorrectAttemepted()))
				.add(Restrictions.eq("kinesthetic",
						septSubmissionResponse.getKinestheticResult().getCorrectAttemepted()))
				.uniqueResult();
		return septResultStatementEntity;
	}

	@Override
	public void startSeptForUser(SeptEntityStatus septEntityStatus) {
		getSession().save(septEntityStatus);
	}

}
