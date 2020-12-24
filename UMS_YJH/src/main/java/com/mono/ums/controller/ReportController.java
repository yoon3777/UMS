package com.mono.ums.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mono.ums.service.SendService;

@Controller
public class ReportController {
	
	@Autowired
	SendService sendService;
	
	@RequestMapping("/report")
	public String msg_report(HttpSession httpSession){
		sendService.trunc_temp();
		httpSession.setAttribute("page", "report");
		return "report/msg_report.page";
	}
	
	@RequestMapping("/detail")
	public String msg_detail(HttpSession httpSession){
		sendService.trunc_temp();
		httpSession.setAttribute("page", "detail");
		return "report/msg_detail.page";
	}


}
