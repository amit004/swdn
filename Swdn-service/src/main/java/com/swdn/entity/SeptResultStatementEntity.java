package com.swdn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="mst_avkcombination")
@Data
public class SeptResultStatementEntity {

	@Id
	@Column(name="avk_id")
	private  String avkid;
	
	private int auditory;
	
	private int visual;
	
	private int kinesthetic;
	
	private String statements;
	
	
}
