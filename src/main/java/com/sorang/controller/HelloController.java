package com.sorang.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sorang.domain.City;
import com.sorang.mapper.CityMapper;

//@RestController
@Controller
public class HelloController {
	/*@RequestMapping("/")
	public String index() {
		return "index";
	}*/
	@Resource
    private CityMapper cityMapper;
	
	@RequestMapping("/")
	public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="") String name) {
        //model.addAttribute("name", name);
		City find = cityMapper.findByState("seoul");
		System.out.println("find name : " + find.getName());
		//insert
		City city = new City();
		city.setId(5);
		city.setName("mini");
		city.setState("home");
		city.setCountry("rangrang");
		boolean res = cityMapper.insertCity(city);
		System.out.println("insert res : " + res);
		return "index";
    }
}
