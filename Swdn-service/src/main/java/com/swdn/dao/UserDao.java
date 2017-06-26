package com.swdn.dao;

import com.swdn.entity.Sept;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;

public interface UserDao {

	public User getUserDetails(String emailId);

	public UserEntity getUserDetailedInfo(Integer integer);
	
	public Sept getSeptDetails(Integer userId);
	
	public void setUserLoginStatus(Integer userId,String token);

}
