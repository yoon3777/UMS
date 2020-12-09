package com.mono.ums.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SendController {
	
	@RequestMapping("/")
	public String send_sms(){
		return "send/send_sms.page";
	}
	
	@RequestMapping("/mms")
	public String send_mms(){
		return "send/send_mms.page";
	}
	
	@RequestMapping("/vms")
	public String send_vms(){
		return "send/send_vms.page";
	}
	
	@RequestMapping("/fms")
	public String send_fms(){
		return "send/send_fms.page";
	}

}
