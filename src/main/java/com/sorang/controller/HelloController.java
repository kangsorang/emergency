package com.sorang.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sorang.domain.Student;
import com.sorang.mapper.StudentMapper;

//@RestController
@Controller
public class HelloController {
	/*@RequestMapping("/")
	public String index() {
		return "index";
	}*/
	@Resource
    private StudentMapper studentMapper;
	
	
	@RequestMapping("/")
	public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="") String name) {
        /*//model.addAttribute("name", name);
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
		}*/
		return "intro";
    }
	
	@RequestMapping("/baselist")
	public @ResponseBody List<Student> getBaseStudentList(HttpServletRequest request) throws Exception{
		List<Student> students = studentMapper.getAllStudents();
		return students;
	}
	
	//@RequestMapping(value="/selectstudent", method=RequestMethod.POST)
	@RequestMapping("/selectstudent")
	public String selectStudent(Model model, HttpServletRequest request) {
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String name = request.getParameter("name");
		System.out.println(" selectStudent : " + name + " , " + month + " , " + day);
		Student req = new Student();
		req.setName(name);
		req.setBirthday(Integer.parseInt(month + day));
		
		Student ret = studentMapper.getStudent(req);
		
		if (ret == null) {
			// 생일을 잘못 입력한 케이스...
			return null;
		} else {
			model.addAttribute("name", ret.getName());
			model.addAttribute("mobile_number_student", ret.getMobile_number_student());
			model.addAttribute("mobile_number_mother", ret.getMobile_number_mother());
			model.addAttribute("mobile_number_father", ret.getMobile_number_father());
			model.addAttribute("phone_number_home", ret.getPhone_number_home());
			model.addAttribute("home_address", ret.getAddress());
			
			return "form";
		}
	}
	
	@RequestMapping("/enterform")
	public String enterFormData(Model model, HttpServletRequest request) {
		Student st = new Student();
		st.setName(request.getParameter("contact_name"));
		st.setMobile_number_student(request.getParameter("mobile_student"));
		st.setMobile_number_mother(request.getParameter("mobile_mother"));
		st.setMobile_number_father(request.getParameter("mobile_father"));
		st.setPhone_number_home(request.getParameter("phone"));
		st.setAddress(request.getParameter("address"));
		
		boolean ret = studentMapper.updateStudent(st);
		
		return "end";
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
		student.setBirthday(123);
		student.setName("김민석");
		student.setMobile_number_student("01055554444");
		student.setMobile_number_father("01056784938");
		student.setMobile_number_mother("75347538475345");
		student.setAddress("서울 1235345345주공아파트");
		
		studentMapper.insertStudent(student);
	}
}
