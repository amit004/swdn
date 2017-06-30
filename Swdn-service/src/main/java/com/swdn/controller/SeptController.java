package com.swdn.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.exception.SwdnException;
import com.swdn.model.response.SwdnResponse;

@RestController
@RequestMapping(value="v1")
public class SeptController {

	
	@RequestMapping(value="startSept",method=RequestMethod.GET)
	public  SwdnResponse startSept(HttpServletRequest httpServletRequest){
		
		String token=httpServletRequest.getHeader("");
		return null;
	}
	
	

	@RequestMapping(value = "submitSept", method = RequestMethod.POST)
	public SwdnResponse septUpload() throws SwdnException{

		// added method to parse values from json to arraylist.
		septDataArrList = septService.septParseData(SeptInputJson);
		return getResponse(septService.septUploadData(userID,septDataArrList), null);// add method to put all sept data in db
	}
}