package com.swdn.dao;

import com.swdn.entity.SeptEntityStatus;
import com.swdn.entity.StudentEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserDetailsEntity;
import com.swdn.entity.UserSessionEntity;
import com.swdn.exception.SwdnException;
import com.swdn.modle.dto.TokenDetailsDto;

public interface UserDao {

	public User getUserDetails(String userName);
	
	public UserSessionEntity getUserDetailsByToken(String userToken) throws SwdnException;

	public User getUserDetailsByEmailId(String userName) throws SwdnException;

	public UserDetailsEntity getUserDetailedInfo(Integer integer);

	public void setUserStatusLogout(String userToken) throws SwdnException;

	public SeptEntityStatus getSeptDetails(Integer userId);

	public void setUserLoginStatus(Integer userId, TokenDetailsDto token);
	
	StudentEntity getStudentDetails(Integer userId) throws SwdnException;

}
