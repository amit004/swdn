package com.swdn.modle.dto;

import lombok.Data;

@Data
public class SeptQuestionDto {

	private Integer questionId;

	private Integer questionSequence;

	private Integer attemptedAnswerId;

	private String attemptedAnswerText;

	private Boolean isCorrectAttempted;

	private String startTime;

	private String endTime;

}
