package com.mono.ums.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mono.ums.service.TestService;


@Controller
public class TestController {

	@Autowired
	private TestService testService;

	@RequestMapping("/test")
	public String test(Model model) {
		model.addAttribute("view", testService.viewAll());
		return "test/test";
	}
	
	@RequestMapping("/aaaPage")
	public String aaPage(){
		return "aaa.page";
	}
	
	@RequestMapping("/aaaPart")
	public String aaPart(){
		return "aaa.part";
	}
	
	@RequestMapping("/aaa")
	public String aa(){
		return "aaa";
	}

}
