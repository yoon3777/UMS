package com.mono.ums.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SendController {
	
	
	@RequestMapping("/")
	public String send_sms(HttpSession httpSession){
		httpSession.setAttribute("page", "SMS/LMS");
		return "send/send_sms.page";
	}
	
	@RequestMapping("/mms")
	public String send_mms(HttpSession httpSession){
		httpSession.setAttribute("page", "MMS");
		return "send/send_mms.page";
	}
	
	@RequestMapping("/vms")
	public String send_vms(HttpSession httpSession){
		httpSession.setAttribute("page", "VMS");
		return "send/send_vms.page";
	}
	
	@RequestMapping("/fms")
	public String send_fms(HttpSession httpSession){
		httpSession.setAttribute("page", "FMS");
		return "send/send_fms.page";
	}

}
