package com.swdn.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.UserDao;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;

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

}
