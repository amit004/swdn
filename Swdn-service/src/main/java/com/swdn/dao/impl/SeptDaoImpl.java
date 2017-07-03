package com.swdn.dao.impl;

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
import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptSubmissionRequest;

@Repository
@Transactional
public class SeptDaoImpl implements SeptDao {

	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public SeptEntityStatus getSeptStatus(SeptSubmissionRequest septuploadRequest) throws SwdnException {

		return null;
	}

	@Override
	public void submitSept(SeptDetailsEntity septDetailsEntity) throws SwdnException {
		getSession().save(septDetailsEntity);
	}

	@Override
	public void startSeptForUser(SeptSubmissionRequest septuploadRequest) throws SwdnException {
		
	}

	@Override
	public SeptQuestionEntity getSeptQuestionsById(Integer id) throws SwdnException {

		Criteria criteria = getSession().createCriteria(SeptQuestionEntity.class);
		SeptQuestionEntity septQuestionEntity = (SeptQuestionEntity) criteria.add(Restrictions.eq("id", id))
				.uniqueResult();

		return septQuestionEntity;
	}

}
