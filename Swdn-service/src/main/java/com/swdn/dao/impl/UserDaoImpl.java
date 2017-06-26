package com.swdn.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.UserDao;
import com.swdn.entity.Sept;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.entity.UserSessionEntity;

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
	public Sept getSeptDetails(Integer userId) {
		return (Sept) getSession().createQuery("from Sept where userId = :userId")
				.setParameter("userId", userId).uniqueResult();	}


	@Override
	public void setUserLoginStatus(Integer userId,String token) {
		
		//TODO Correct it 
		UserSessionEntity userSession=new UserSessionEntity();
		userSession.setUserId(userId);
		userSession.setUserTypeId(4);
		userSession.setLoginStatus(1);
		userSession.setLoginSessionId(token);
		userSession.setSystemIp("underImplementation");
		userSession.setAgent("N/A");
		userSession.setAndroidGsmId("N/A");
		userSession.setIosGsmId("N/A");
		userSession.setStatus(1);
		getSession().save(userSession);
		
	}
	
	
	

}
