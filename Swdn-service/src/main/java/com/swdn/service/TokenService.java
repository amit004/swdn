package com.swdn.service;

import com.swdn.exception.SwdnException;
import com.swdn.modle.dto.TokenDetailsDto;

public interface TokenService {

	TokenDetailsDto encryptToken(TokenDetailsDto token) throws SwdnException;
	
	TokenDetailsDto decryptToken(String tokenString) throws SwdnException;
	
}
