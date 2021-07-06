package com.atd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.atd.entity.student;
import com.atd.service.studentservice;

@Controller
public class studetntcontroller {
	
	@Autowired
	private studentservice studservice;
	
	@GetMapping("/index")
	public String index()
	{
		return "index";
	}

	
	@GetMapping("/add")
	public String addpage()
	{
		
		return "add";
	}
	
	@PostMapping("/view")
	public String addstud(@ModelAttribute student stud,Model model)
	{
		System.out.println(stud);
		
		
			boolean savestudent = studservice.savestudent(stud);
			if(savestudent!=false)
			{
				model.addAttribute("data","data saved successfully");
			}
			else
			{
				model.addAttribute("data","data not saved");
			}
		
		
			
		return "add";
		
	}
	
	
	@GetMapping("/viewprod")
	public String getallstudent(Model model)
	{
		List<student> getallstud = studservice.getallstud();
		
		model.addAttribute("getall",getallstud);
		
		return "viewall";
		
	}
	
	@RequestMapping("/delete/{id}")
	public String deletebyid(@PathVariable("id") int id)
	{
		System.out.println("delete by id"+id);
	 studservice.deletestud(id);
		
		return "redirect:/viewprod";
		
	}
	
	@RequestMapping("/update/{id}")
	public String editproduct(@PathVariable("id") int id,Model model)
	{
	student getbyid = studservice.getstudbyid(id);
		model.addAttribute("student",getbyid);
		return "update";
		
	}
	
	
	@RequestMapping(path="/submit", method=RequestMethod.POST)
	public String submiteditedproduct(@RequestParam("Id") int id
			,@RequestParam("STUDENT_NAME") String name
			,@RequestParam("STUDENT_DOJ") String doj
			,@RequestParam("STUDENT_DOB") String dob
			,Model  model)
	{		
	System.out.println(id+"  "+name+"  "+doj+"  "+dob);
		student p=new student();
		p.setSTUDENT_NO(id);
		p.setSTUDENT_NAME(name);
		p.setSTUDENT_DOJ(doj);
		p.setSTUDENT_DOB(dob);
	  studservice .updatestud(p);
		return "redirect:/viewprod";
	}
}
