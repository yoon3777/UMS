package com.mono.ums2.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.mono.ums2.dto.DestTempDTO;
import com.mono.ums2.dto.MsgSendDTO;
import com.mono.ums2.dto.SDKSendDTO;

public interface MsgSendMapper {

	long getSendItemTotalCnt(Map<String, Object> paramMap);

	List<Map<String, Object>> findSendItems(Map<String, Object> paramMap);

	void addSendItem(DestTempDTO destTempDTO);
	
	void sendMsg(MsgSendDTO msgSendDTO); 
	
	void overWriteDest(MsgSendDTO msgSendDTO);

	void truncTempItems();
	
	ArrayList<SDKSendDTO> sendMsgSelect(int msgId);
	
	void sendMsgSDK(SDKSendDTO sdkSendDTO);

}
