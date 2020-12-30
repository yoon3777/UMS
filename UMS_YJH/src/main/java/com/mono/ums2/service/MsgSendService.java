package com.mono.ums2.service;

import java.util.Map;

import org.springframework.ui.Model;

import com.mono.ums2.dto.DestTempDTO;
import com.mono.ums2.dto.MsgSendDTO;

public interface MsgSendService {

	void setFormPage(Model model) throws Exception;

	void sendMsg(Model model, MsgSendDTO msgSendDTO) throws Exception;

	Map<String, String> save(Model model) throws Exception;

	Map<String, String> delete(Model model) throws Exception;

	Map<String, String> addSendItem(Model model, DestTempDTO destTempDTO) throws Exception;

	Map<String, Object> findSendItems(Model model) throws Exception;

}
