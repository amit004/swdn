package com.swdn.dao;

import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserDetailsEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.exception.SwdnException;

public interface UserDao {

	User getUserDetails(String userName);

	UserSessionEntity getUserSessionByToken(String userToken) throws SwdnException;

	UserSessionEntity getUserSessionByUserId(Integer integer);

	User getUserDetailsByEmailId(String userName) throws SwdnException;

	UserDetailsEntity getUserDetailedInfo(Integer integer);

	void setUserStatusLogout(UserSessionEntity userSessionEntity);

	SeptEntityStatus getSeptDetails(Integer userId);

	void setUserLoginStatus(UserSessionEntity userSessionEntity);

	StudentEntity getStudentDetails(Integer userId) throws SwdnException;

}
