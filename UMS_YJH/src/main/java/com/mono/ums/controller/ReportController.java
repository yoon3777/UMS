package com.mono.ums.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReportController {
	
	@RequestMapping("/report")
	public String msg_report(HttpSession httpSession){
		httpSession.setAttribute("page", "report");
		return "report/msg_report.page";
	}
	
	@RequestMapping("/detail")
	public String msg_detail(HttpSession httpSession){
		httpSession.setAttribute("page", "detail");
		return "report/msg_detail.page";
	}


}
