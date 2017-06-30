package com.swdn.model.request;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;

@Data
public class SeptUploadRequest {
	
	@NotNull
	@NotEmpty(message = "userID can'nt be left blank ")
	private int userID;
	
	@NotNull
	@NotEmpty(message = "question_id can'nt be left blank ")
	private int question_id;
	
	@NotNull
	@NotEmpty(message = "question_sequence can'nt be left blank ")
	private int question_sequence;
	
	@NotNull
	@NotEmpty(message = "question_answer can'nt be left blank ")
	private String question_answer;

	@NotNull
	@NotEmpty(message = "question_answer_option can'nt be left blank ")
	private String question_answer_option;

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public int getQuestion_sequence() {
		return question_sequence;
	}

	public void setQuestion_sequence(int question_sequence) {
		this.question_sequence = question_sequence;
	}

	public String getQuestion_answer() {
		return question_answer;
	}

	public void setQuestion_answer(String question_answer) {
		this.question_answer = question_answer;
	}

	public String getQuestion_answer_option() {
		return question_answer_option;
	}

	public void setQuestion_answer_option(String question_answer_option) {
		this.question_answer_option = question_answer_option;
	}
	
	



}
