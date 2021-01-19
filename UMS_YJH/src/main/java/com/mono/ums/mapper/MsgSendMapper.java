package com.mono.ums.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.mono.ums.dto.DestTempDTO;
import com.mono.ums.dto.MsgSendDTO;
import com.mono.ums.dto.SDKSendDTO;
import com.mono.ums.dto.SchDestDTO;

public interface MsgSendMapper {

	long getSendItemTotalCnt(Map<String, Object> paramMap);

	List<Map<String, Object>> findSendItems(Map<String, Object> paramMap);

	void addSendItem(DestTempDTO destTempDTO);
	
	void sendMsg(MsgSendDTO msgSendDTO); 
	
	void overWriteDest(MsgSendDTO msgSendDTO);

	void truncTempItems();
	
	ArrayList<SDKSendDTO> sendMsgSelect(int msgId);
	
	void sendMsgSDK(SDKSendDTO sdkSendDTO);

	SDKSendDTO schMsg(int msgId);

	ArrayList<SchDestDTO> schDest(int msgId);

	int checkDest(DestTempDTO destTempDTO);

	void deleteDest(String destNum);

	void deleteADest();

}
