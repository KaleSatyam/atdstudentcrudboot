package com.atd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atd.entity.student;
import com.atd.repository.studentrepository;

@Service
public class studentserviceimpl implements studentservice {

	@Autowired
	private studentrepository repo;
	
	@Override
	public boolean savestudent(student data) {
		boolean b=false;
		
		student save = repo.save(data);
		
		if(save!=null)
		{
			b=true;
		}
		
		return b;
	}

	@Override
	public List<student> getallstud() {
		List<student> findAll = repo.findAll();
		return findAll;
	}

	@Override
	public  void  updatestud(student data) {
		Optional<student> prod = repo.findById(data.getSTUDENT_NO());
		System.out.println(prod);
				student pid=prod.get();
				pid.setSTUDENT_NAME(data.getSTUDENT_NAME());
				pid.setSTUDENT_DOJ(data.getSTUDENT_DOJ());
				pid.setSTUDENT_DOB(data.getSTUDENT_DOB());
				System.out.println(pid);
				repo.save(pid);
				
	}

	@Override
	public boolean deletestud(int id) {
		// TODO Auto-generated method stub
		if(repo.existsById(id))
		{
			repo.deleteById(id);
			return true;
			
		}else
		{
			return false;
		}
		
	}

	@Override
	public student getstudbyid(int id) {
		// TODO Auto-generated method stub
		student byId = repo.getById(id);
		return byId;
	}

}
