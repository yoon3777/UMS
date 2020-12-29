package com.mono.ums2.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mono.ums2.dto.DestTempDTO;
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
	public String view(Model model) {
		try {
			msgSendService.setViewPage(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}

		return "layout:view:msgsend/sms";
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

	@RequestMapping("/removeSendItem")
	public @ResponseBody Map<String, String> removeSendItem(Model model, HttpServletResponse response) {
		Map<String, String> resultMap = null;
		try {
			resultMap = msgSendService.save(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return resultMap;
	}

	@RequestMapping("/form")
	public String form(Model model) {
		try {
			msgSendService.setFormPage(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}

		return "/ums/msgsend/form";
	}

	@RequestMapping("/send")
	public void send(Model model, HttpServletResponse response) {
		try {
			msgSendService.send(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
	}

	@RequestMapping("/save")
	public @ResponseBody Map<String, String> save(Model model, HttpServletResponse response) {
		Map<String, String> resultMap = null;
		try {
			resultMap = msgSendService.save(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return resultMap;
	}

	@RequestMapping("/delete")
	public @ResponseBody Map<String, String> delete(Model model, HttpServletResponse response) {
		Map<String, String> resultMap = null;
		try {
			resultMap = msgSendService.delete(model);
		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return resultMap;
	}

}
