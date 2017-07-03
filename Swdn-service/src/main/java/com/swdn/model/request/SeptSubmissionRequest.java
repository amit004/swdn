package com.swdn.model.request;

import java.util.ArrayList;

import com.swdn.modle.dto.SeptQuestionDto;

import lombok.Data;

@Data
public class SeptSubmissionRequest {
	
	private int userID;
	
	private ArrayList<SeptQuestionDto> septSubmission;

}
