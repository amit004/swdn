package com.swdn.dao;

import com.swdn.entity.SeptEntity;
import com.swdn.entity.User;
import com.swdn.entity.UserEntity;
import com.swdn.exception.SwdnException;
import com.swdn.modle.dto.TokenDetailsDto;

public interface UserDao {

	public User getUserDetails(String userName);
	
	public User getUserDetailsByEmailId(String userName);

	public UserEntity getUserDetailedInfo(Integer integer);

	public void setUserStatusLogout(String userToken) throws SwdnException;

	public SeptEntity getSeptDetails(Integer userId);

	public void setUserLoginStatus(Integer userId, TokenDetailsDto token);

}
