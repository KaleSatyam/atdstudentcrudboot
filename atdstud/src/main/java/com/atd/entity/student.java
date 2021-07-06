package com.atd.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "STUDENT")
public class student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int STUDENT_NO ;
	private String STUDENT_NAME;
	private String STUDENT_DOB;
	private String STUDENT_DOJ;

}
