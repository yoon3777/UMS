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

import com.mono.ums2.dto.SchReportDTO;
import com.mono.ums2.service.MsgReportService;

@Controller
@RequestMapping("/msgreport")
public class MsgReportController {

	int id;

	@Autowired
	private MsgReportService msgReportService;

	@ModelAttribute
	public void common(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		model.addAttribute("contextPath", request.getContextPath());
		model.addAttribute("request", request);
	}

	@RequestMapping("/report")
	public String report(Model model, HttpSession session) {
		session.setAttribute("page", "결과 조회");
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "layout:view:msgreport/report";
	}

	@RequestMapping("/rlist")
	public @ResponseBody Map<String, Object> getReportItems(HttpServletResponse response) {
		Map<String, Object> resultMap = null;
		try {
			resultMap = msgReportService.schReportItems();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}

	@RequestMapping("/detail{id}")
	public String detail(Model model, @PathVariable("id") int id, HttpSession session) {
		session.setAttribute("page", "상세 결과 조회");
		this.id = id;
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "layout:view:msgreport/detail";
	}

	@RequestMapping("/dlist")
	public @ResponseBody Map<String, Object> dlist(Model model) {
		Map<String, Object> resultMap = null;
		try {
			resultMap = msgReportService.schDetailItems(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}

	@RequestMapping("/schReport")
	public @ResponseBody Map<String, Object> schReport(SchReportDTO schReportDTO) {
		Map<String, Object> resultMap = null;
		try {
			msgReportService.schReport(schReportDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}

}
