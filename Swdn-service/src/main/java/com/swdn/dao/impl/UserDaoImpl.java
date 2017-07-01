package com.swdn.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.UserDao;
import com.swdn.entity.SeptEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.modle.dto.TokenDetailsDto;

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
	public UserEntity getUserDetailedInfo(Integer userId) {
		return (UserEntity) getSession().createQuery("from UserEntity where userReferenceId = :userReferenceId")
				.setParameter("userReferenceId", userId).uniqueResult();
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public SeptEntity getSeptDetails(Integer userId) {
		return (SeptEntity) getSession().createQuery("from SeptEntity where userId = :userId")
				.setParameter("userId", userId).uniqueResult();
	}

	@Override
	public void setUserLoginStatus(Integer userId, TokenDetailsDto token) {

		// TODO Correct it
		UserSessionEntity userSession = new UserSessionEntity();
		userSession.setUserId(userId);
		userSession.setUserTypeId(4);
		userSession.setLoginStatus(1);
		userSession.setLoginSessionId(token.getTokenString());
		userSession.setSystemIp(token.getLoginIp());
		userSession.setAgent(token.getAgent());
		userSession.setAndroidGsmId("N/A");
		userSession.setIosGsmId("N/A");
		userSession.setStatus(1);
		getSession().save(userSession);

	}

	@Override
	public void setUserStatusLogout(String userToken) throws SwdnException {
		Session session = getSession();
		UserSessionEntity userSessionEntity = null;
		Criteria criteria = session.createCriteria(UserSessionEntity.class);
		userSessionEntity = (UserSessionEntity) criteria.add(Restrictions.eq("loginSessionId", userToken))
				.uniqueResult();

		if (userSessionEntity == null)
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(),
					SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage(), SwdnErrors.SWDN_TOKEN_ERROR_01.getErrorMessage());

		userSessionEntity.setLoginSessionId("");
		session.update(userSessionEntity);
	}

	@Override
	public User getUserDetailsByEmailId(String emailId) {
		return (User) getSession().createQuery("from User where email = :email").setParameter("email", emailId)
				.uniqueResult();
	}
}
