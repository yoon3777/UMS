package com.mono.ums.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.dto.SendDTO;
import com.mono.ums.dto.Send_SelectDTO;
import com.mono.ums.service.SendService;

@Controller
public class SendController {

	@Autowired
	SendService sendService;

	@RequestMapping("/")
	public String send_sms(HttpSession httpSession, HttpServletRequest httpServletRequest, Model model) {
		sendService.trunc_temp();
		httpSession.setAttribute("page", "SMS");
		/*
		 * String session_id = httpServletRequest.getRequestedSessionId(); System.out.println(session_id);
		 */
		return "send/send_sms.page";
	}

	@RequestMapping("/mms")
	public String send_mms(HttpSession httpSession) {
		sendService.trunc_temp();
		httpSession.setAttribute("page", "MMS");
		return "send/send_mms.page";
	}

	@RequestMapping("/vms")
	public String send_vms(HttpSession httpSession) {
		sendService.trunc_temp();
		httpSession.setAttribute("page", "VMS");
		return "send/send_vms.page";
	}

	@RequestMapping("/fms")
	public String send_fms(HttpSession httpSession) {
		sendService.trunc_temp();
		httpSession.setAttribute("page", "FMS");
		return "send/send_fms.page";
	}

	@ResponseBody
	@RequestMapping("/insertDest")
	public void insertDest(DestDTO destDTO, Model model) {
		sendService.dest_insert(destDTO);
	}

	@RequestMapping("/deleteDest")
	public void deleteDest(@RequestParam(value = "dest_num", required = false) String dest_num) {
		sendService.dest_delete(dest_num);
	}

	@RequestMapping("/sendMsg")
	public String sendMsg(SendDTO sendDTO, Send_SelectDTO send_SelectDTO) {
		int type = sendDTO.getSch_type();
		if (type == 1) {
			sendService.send_insert(sendDTO);
			int msg_id = sendDTO.getMsg_id();
			sendService.copy_dest(sendDTO);

			sendService.trunc_temp();

			ArrayList<Send_SelectDTO> ss = sendService.select_send(msg_id);
			for (Send_SelectDTO aa : ss) {
				aa.setDest_info(aa.getDest_name() + '^' + aa.getDest_num());
				sendService.insert_sdk_sms(aa);
			}

		} else {
			sendService.send_insert2(sendDTO);
			int msg_id = sendDTO.getMsg_id();
			sendService.copy_dest(sendDTO);

			sendService.trunc_temp();

			ArrayList<Send_SelectDTO> ss = sendService.select_send(msg_id);
			for (Send_SelectDTO aa : ss) {
				aa.setDest_info(aa.getDest_name() + '^' + aa.getDest_num());
				sendService.insert_sdk_sms2(aa);
			}
		}
		return "redirect:/";

	}

}
