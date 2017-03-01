package com.sorang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

//@RestController
@Controller
public class HelloController {
	/*@RequestMapping("/")
	public String index() {
		return "index";
	}*/
	@RequestMapping("/")
	public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="") String name) {
        //model.addAttribute("name", name);
        return "index";
    }
}
