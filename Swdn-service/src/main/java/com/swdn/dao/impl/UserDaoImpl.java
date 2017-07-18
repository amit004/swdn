package com.swdn.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.UserDao;
import com.swdn.entity.SchoolEntity;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserDetailsEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.exception.SwdnException;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * Using Entity class variables in hql not db's
	 */
	@Override
	public User getUserDetails(String userName) {
		return (User) getSession().createQuery("from User where userName = :userName")
				.setParameter("userName", userName).uniqueResult();
	}

	@Override
	public UserDetailsEntity getUserDetailedInfo(Integer userId) {
		return (UserDetailsEntity) getSession()
				.createQuery("from UserDetailsEntity where userReferenceId = :userReferenceId")
				.setParameter("userReferenceId", userId).uniqueResult();
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void setUserLoginStatus(UserSessionEntity userSession) {

		getSession().saveOrUpdate(userSession);

	}

	@Override
	public void setUserStatusLogout(UserSessionEntity userSessionEntity) {
		Session session = getSession();
		session.update(userSessionEntity);
	}

	@Override
	public User getUserDetailsByEmailId(String emailId) {
		return (User) getSession().createQuery("from User where email = :email").setParameter("email", emailId)
				.uniqueResult();
	}

	@Override
	public UserSessionEntity getUserSessionByToken(String userToken) throws SwdnException {
		Criteria criteria = getSession().createCriteria(UserSessionEntity.class);
		return (UserSessionEntity) criteria.add(Restrictions.eq("loginSessionId", userToken)).uniqueResult();
	}

	@Override
	public StudentEntity getStudentDetails(Integer userId) throws SwdnException {
		Criteria criteria = getSession().createCriteria(StudentEntity.class);
		StudentEntity studentEntity = (StudentEntity) criteria.add(Restrictions.eq("userId", userId)).uniqueResult();
		return studentEntity;
	}

	@Override
	public UserSessionEntity getUserSessionByUserId(Integer userId) {
		Criteria criteria = getSession().createCriteria(UserSessionEntity.class);
		return (UserSessionEntity) criteria.add(Restrictions.eq("userId", userId)).uniqueResult();
	}

	@Override
	public SchoolEntity getSchollDetails(String schoolCode) throws SwdnException {
		return (SchoolEntity) getSession().get(SchoolEntity.class, schoolCode);
	}

}
