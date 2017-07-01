package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "tbl_sept_activity")
@Data
public class SeptUpload {
	
	@Column(name = "student_id")
	@Id
	private Integer userId; //

	@Column(name = "mst_id")
	private int questionID; //
	
	@Column(name = "question_sequence")
	private int questionSequence; //
	
	@Column(name = "right_ans_text")
	private String rightAnswerText; //
	
	@Column(name = "right_ans_id")
	private String rightAnswerID; //
	
	
	@Column(name = "answer")
	private String answer; //
	
	@Column(name = "answer_text")
	private String answerText; //
	
	@Column(name = "answer_result")
	private int answerResult; //
	
	@Column(name = "student_enroll")
	private String studentEnroll; //
	
	@Column(name = "student_name")
	private String studentName; //
	
	@Column(name = "school_name")
	private String schoolName; //
	
	@Column(name = "school_code")
	private String schoolCode; //
	
	@Column(name = "class_id")
	private int classID; //
	
	@Column(name = "section")
	private String section; //
	
	@Column(name = "start_time")
	private String startTime; //
	
	@Column(name = "end_time")
	private String endTime; 
	
	@Column(name = "attempt_date")
	private String attemptDate;
	
	@Column(name = "academic_year")
	private String academicYear;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public int getQuestionID() {
		return questionID;
	}

	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}

	public int getQuestionSequence() {
		return questionSequence;
	}

	public void setQuestionSequence(int questionSequence) {
		this.questionSequence = questionSequence;
	}

	public String getRightAnswerText() {
		return rightAnswerText;
	}

	public void setRightAnswerText(String rightAnswerText) {
		this.rightAnswerText = rightAnswerText;
	}

	public String getRightAnswerID() {
		return rightAnswerID;
	}

	public void setRightAnswerID(String rightAnswerID) {
		this.rightAnswerID = rightAnswerID;
	}


	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswerText() {
		return answerText;
	}

	public void setAnswerText(String answerText) {
		this.answerText = answerText;
	}

	public int getAnswerResult() {
		return answerResult;
	}

	public void setAnswerResult(int answerResult) {
		this.answerResult = answerResult;
	}

	public String getStudentEnroll() {
		return studentEnroll;
	}

	public void setStudentEnroll(String studentEnroll) {
		this.studentEnroll = studentEnroll;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getSchoolCode() {
		return schoolCode;
	}

	public void setSchoolCode(String schoolCode) {
		this.schoolCode = schoolCode;
	}

	public int getClassID() {
		return classID;
	}

	public void setClassID(int classID) {
		this.classID = classID;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getAttemptDate() {
		return attemptDate;
	}

	public void setAttemptDate(String attemptDate) {
		this.attemptDate = attemptDate;
	}

	public String getAcademicYear() {
		return academicYear;
	}

	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}
	
	


}
