package com.swdn.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.swdn.exception.SwdnException;
import com.swdn.model.request.SeptUploadRequest;
import com.swdn.model.response.SwdnResponse;
import com.swdn.service.SeptService;
import com.swdn.servieimpl.SeptServiceImpl;
import com.swdn.utils.SwdnUtils;

@RestController
@RequestMapping(value="v1")
public class SeptController {

	
	@Autowired
	SeptService septService;
	
	@Autowired
	SwdnUtils swdnUtils;
	
	@RequestMapping(value="startSept",method=RequestMethod.GET)
	public  SwdnResponse startSept(HttpServletRequest httpServletRequest){
		String token=httpServletRequest.getHeader("");
		return null;
	}
	

	@RequestMapping(value = "submitSept", method = RequestMethod.POST)
	public SwdnResponse septUpload(@RequestBody SeptUploadRequest septuploadRequest) throws SwdnException{

		// added method to parse values from json to arraylist.
		//septDataArrList = septService.septParseData(SeptInputJson);
		return swdnUtils.getResponse(septService.septUploadData(septuploadRequest), null);
	}
}
