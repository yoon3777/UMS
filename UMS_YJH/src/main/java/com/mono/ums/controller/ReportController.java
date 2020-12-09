package com.mono.ums.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReportController {
	
	@RequestMapping("/report")
	public String msg_report(){
		return "report/msg_report.page";
	}
	
	@RequestMapping("/detail")
	public String msg_detail(){
		return "report/msg_detail.page";
	}


}
