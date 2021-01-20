package com.mono.ums.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mono.ums.service.MsgViewService;

@Controller
public class MsgViewController {
	
	@Autowired
	private MsgViewService msgLoginService;

	@ModelAttribute
	public void common(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {

		model.addAttribute("contextPath", request.getContextPath());
		model.addAttribute("request", request);
	}

	@RequestMapping("/")
	public String loginView() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "layout:form:msgview/login";
	}

	@RequestMapping("/login")
	public @ResponseBody Map<String, Object> login(Model model) {
		Map<String, Object> resultMap = null;
		try {
			resultMap = msgLoginService.login(model);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}
	
	@RequestMapping("/view")
	public String view(HttpSession session){
		session.invalidate();
		return "layout:view:msgview/view";
	}
}
