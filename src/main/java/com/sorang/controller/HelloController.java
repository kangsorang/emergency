package com.sorang.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sorang.domain.City;
import com.sorang.domain.Student;
import com.sorang.mapper.CityMapper;
import com.sorang.mapper.StudentMapper;

//@RestController
@Controller
public class HelloController {
	/*@RequestMapping("/")
	public String index() {
		return "index";
	}*/
	@Resource
    private CityMapper cityMapper;
	
	@Resource
    private StudentMapper studentMapper;
	
	@RequestMapping("/")
	public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="") String name) {
        //model.addAttribute("name", name);
		City find = cityMapper.findByState("seoul");
		if (find != null) {
			System.out.println("find name : " + find.getName());
		}
		//insert
		City city = new City();
		city.setId(1);
		city.setName("mini");
		city.setState("home");
		city.setCountry("rangrang");
		try {
			boolean res = cityMapper.insertCity(city);
			System.out.println("insert res : " + res);
		} catch(Exception e) {
			System.out.println("sorang exception : " + e.getMessage());
		}
		return "index";
    }
	
	@RequestMapping("/all")
	public @ResponseBody void printAllStudent(Model model) {
		List<Student> students = studentMapper.getAllStudents();
		for(int i = 0; i < students.size(); i++) {
			Student student = students.get(i);
			System.out.println("print : " + student.toString());
		}
	}
	
	@RequestMapping("/insert")
	public @ResponseBody void addStudent(Model model) {
		System.out.println("addStudent");
		Student student = new Student();
		student.setBirthday(729);
		student.setName("sorang");
		student.setMobile_number_student("01025067142");
		student.setAddress("하안주공 9단지 911동 708호");
		
		studentMapper.insertCity(student);
	}
}
