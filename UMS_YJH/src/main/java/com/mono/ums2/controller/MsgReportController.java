package com.mono.ums2.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/msgreport")
public class MsgReportController {

	@ModelAttribute
	public void common(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		model.addAttribute("contextPath", request.getContextPath());
		model.addAttribute("request", request);
	}

	@RequestMapping("/report")
	public String report(Model model) {
		try {

		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return "layout:view:msgreport/report";
	}

	@RequestMapping("/detail")
	public String detail(Model model) {
		try {

		} catch (Exception e) {
			e.printStackTrace();
			// 어떠한 예외처리가 필요.
		}
		return "layout:view:msgreport/detail";
	}

}
