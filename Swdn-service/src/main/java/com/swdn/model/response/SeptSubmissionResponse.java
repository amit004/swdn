package com.swdn.model.response;

import com.swdn.modle.dto.SeptCategoryResultDto;

import lombok.Data;

@Data
public class SeptSubmissionResponse {

	private Integer totalQuestions;

	private Integer questionsAttempted;

	private Integer correctAnswerAttempted;

	private String septProfile;

	private float netResultPercentage;

	private String resultStatement;

	private SeptCategoryResultDto auditoryResult;

	private SeptCategoryResultDto visualResult;

	private SeptCategoryResultDto kinestheticResult;

}
