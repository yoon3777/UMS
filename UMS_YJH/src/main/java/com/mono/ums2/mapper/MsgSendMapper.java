package com.mono.ums2.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.mono.ums2.dto.DestTempDTO;
import com.mono.ums2.dto.MsgSendDTO;

public interface MsgSendMapper {

	long getSendItemTotalCnt(Map<String, Object> paramMap);

	List<Map<String, Object>> findSendItems(Map<String, Object> paramMap);

	void addSendItem(DestTempDTO destTempDTO);
	
	void sendMsg(Model model, MsgSendDTO msgSendDTO); 
}
