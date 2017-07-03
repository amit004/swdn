package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="mst_sept_activity")
public class SeptQuestionEntity {

	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="question_sequence")
	private String questionSequence;
	
	@Column(name="answer_id")
	private Integer answerId;
	
	@Column(name="answer")
	private String answer;
		
}
