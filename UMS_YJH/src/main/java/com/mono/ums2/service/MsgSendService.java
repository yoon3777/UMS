package com.mono.ums2.service;

import java.util.Map;

import org.springframework.ui.Model;

import com.mono.ums2.dto.DestTempDTO;

public interface MsgSendService {

	void setViewPage(Model model) throws Exception;

	void setFormPage(Model model) throws Exception;

	void send(Model model) throws Exception;

	Map<String, String> save(Model model) throws Exception;

	Map<String, String> delete(Model model) throws Exception;

	Map<String, String> addSendItem(Model model, DestTempDTO destTempDTO) throws Exception;

	Map<String, Object> findSendItems(Model model) throws Exception;

}
