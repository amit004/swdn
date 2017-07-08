package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "tbl_sept_activity")
@Data
public class SeptDetailsEntity {
	
	@Column(name = "student_id")
	private Integer studentId; 

	@Column(name = "mst_id")
	@Id
	private int questionId;
	
	@Column(name = "question_sequence")
	private int questionSequence; 
	
	@Column(name = "right_ans_text")
	private String rightAnswerText; 
	
	@Column(name = "right_ans_id")
	private Integer rightAnswerID; 
	
	@Column(name = "answer")
	private String answer; 
	
	@Column(name = "answer_text")
	private String answerText; 
	
	@Column(name = "answer_result")
	private int answerResult; 
	
	@Column(name = "student_enroll")
	private String studentEnroll; 
	
	@Column(name = "student_name")
	private String studentName; 
	
	@Column(name = "school_name")
	private String schoolName; 
	
	@Column(name = "school_code")
	private String schoolCode; 
	
	@Column(name = "class_id")
	private int classId; 
	
	@Column(name = "section")
	private String section; 
	
	@Column(name = "start_time")
	private String startTime; 
	
	@Column(name = "end_time")
	private String endTime; 
	
	@Column(name = "attempt_date")
	private String attemptDate;
	
	@Column(name = "academic_year")
	private String academicYear;

}
