package com.swdn.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swdn.dao.UserDao;
import com.swdn.modle.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public UserDto getUserDetails(String emailId) {
		
//		UserDto userDto=(UserDto)getSession().get(UserDto.class, emailId);
//		return userDto;
		return null;
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

}
