package com.swdn.dao;

import com.swdn.entity.Sept;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.exception.SwdnException;

public interface UserDao {

	public User getUserDetails(String userName);
	
	public User getUserDetailsByEmailId(String userName);

	public UserEntity getUserDetailedInfo(Integer integer);

	public void setUserStatusLogout(String userToken) throws SwdnException;

	public Sept getSeptDetails(Integer userId);

	public void setUserLoginStatus(Integer userId, String token);

}
