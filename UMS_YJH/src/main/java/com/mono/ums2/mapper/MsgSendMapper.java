package com.mono.ums2.mapper;

import java.util.List;
import java.util.Map;

import com.mono.ums2.dto.DestTempDTO;

public interface MsgSendMapper {

	long getSendItemTotalCnt(Map<String, Object> paramMap);

	List<Map<String, Object>> findSendItems(Map<String, Object> paramMap);

	void addSendItem(DestTempDTO destTempDTO);
}
