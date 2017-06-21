package com.swdn.requestmodels;

import lombok.Data;

@Data
public class UpdateProfileRequest {

	private String userToken;
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String city;
	private String state;
	private int contact;
	private String dateOfBirth;
	private String address;
	private String districtName;
	private int pincode;
	private String maritalStatus;
	private int residencePhone;
	private String motherTongue;
	
	
	public String getUserToken() {
        return userToken;
    }
 
    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }
    
    public String getFirstName() {
        return firstName;
    }
 
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getMiddleName() {
        return middleName;
    }
 
    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }
    
    public String getLastName() {
        return lastName;
    }
 
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
    
    // Add rest of the other setter and getters
}
