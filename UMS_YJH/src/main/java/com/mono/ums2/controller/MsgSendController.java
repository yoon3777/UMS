package com.mono.ums2.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mono.ums2.dto.DestTempDTO;
import com.mono.ums2.dto.MsgSendDTO;
import com.mono.ums2.service.MsgSendService;

@Controller
@RequestMapping("/msgsend")
public class MsgSendController {

	@Autowired
	private MsgSendService msgSendService;

	@ModelAttribute
	public void common(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		model.addAttribute("contextPath", request.getContextPath());
		model.addAttribute("request", request);
	}

	@RequestMapping("/sms")
	public String smsView(Model model, HttpSession session) {
		session.setAttribute("page", "SMS/LMS");
		try {
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}

		return "layout:view:msgsend/sms";
	}

	@RequestMapping("/mms")
	public String mmsView(Model model, HttpSession session) {
		session.setAttribute("page", "MMS");
		try {
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}

		return "layout:view:msgsend/mms";
	}

	@RequestMapping("/vms")
	public String vmsView(Model model, HttpSession session) {
		session.setAttribute("page", "VMS");
		try {
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}

		return "layout:view:msgsend/vms";
	}

	@RequestMapping("/fms")
	public String fmsView(Model model, HttpSession session) {
		session.setAttribute("page", "FMS");
		try {
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}

		return "layout:view:msgsend/fms";
	}

	@RequestMapping("/list")
	public @ResponseBody Map<String, Object> list(Model model, HttpServletResponse response) {
		Map<String, Object> resultMap = null;
		try {
			resultMap = msgSendService.findSendItems(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return resultMap;
	}

	@RequestMapping("/addSendItem")
	public @ResponseBody Map<String, String> addSendItem(Model model, DestTempDTO destTempDTO, HttpServletResponse response) {
		Map<String, String> resultMap = null;
		try {
			resultMap = msgSendService.addSendItem(model, destTempDTO);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return resultMap;
	}


	@RequestMapping("/sendMsg")
	public @ResponseBody Map<String, String> sendMsg(Model model, MsgSendDTO msgSendDTO) {
		Map<String, String> resultMap = null;
		System.out.println("파일 :"+msgSendDTO.toString());
		try {
			resultMap = msgSendService.sendMsg(model, msgSendDTO);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return resultMap;
	}
	
	@RequestMapping("/deleteDest{tabRow}")
	public void deleteDest(@PathVariable String tabRow){
		String destNum = tabRow;
		try {
			msgSendService.deleteDest(destNum);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
	}
	
	@RequestMapping("/deleteADest")
	public void deleteADest(){
		try {
			msgSendService.deleteADest();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
