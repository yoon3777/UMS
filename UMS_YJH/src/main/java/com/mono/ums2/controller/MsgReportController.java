package com.mono.ums2.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mono.ums2.dto.ReportDTO;
import com.mono.ums2.service.MsgReportService;

@Controller
@RequestMapping("/msgreport")
public class MsgReportController {
	
	@Autowired
	private MsgReportService msgReportService;

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
	
	@RequestMapping("/rlist")
	public @ResponseBody Map<String, Object> getReportItems(HttpServletResponse response){
		Map<String, Object> resultMap = null;
		try {
			resultMap = msgReportService.schReportItems();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
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
