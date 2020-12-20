package com.mono.ums.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.service.SendService;

@Controller
public class SendController {
	
	@Autowired
	SendService sendService;
	
	
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
	@RequestMapping("/insertDest")
	public String insertDest(DestDTO destDTO, Model model){
		sendService.dest_insert(destDTO);
		model.addAttribute("dest_list", sendService.select_dest());
		return "/";
	}

}
