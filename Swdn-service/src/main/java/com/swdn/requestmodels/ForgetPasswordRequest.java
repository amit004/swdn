package com.swdn.requestmodels;

import lombok.Data;

@Data
public class ForgetPasswordRequest {
	private String email;
	
	public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }

}
