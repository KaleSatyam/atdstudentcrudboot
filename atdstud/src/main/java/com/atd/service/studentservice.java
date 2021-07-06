package com.atd.service;

import java.util.List;

import com.atd.entity.student;

public interface studentservice {

	public boolean savestudent(student data);
	
	public List<student> getallstud();
	
	public student getstudbyid(int id);
	
	public void updatestud(student data);
	
	public boolean deletestud(int id);
}
