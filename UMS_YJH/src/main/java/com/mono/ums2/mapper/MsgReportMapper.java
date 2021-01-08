package com.mono.ums2.mapper;

import java.util.List;
import java.util.Map;

import com.mono.ums2.dto.SchDestReportDTO;

public interface MsgReportMapper {
	
	List<Map<String, Object>> schReportItems();

	void updateSend(int id);
	
	List<SchDestReportDTO> schDestReport(int id);

	void updateDest(SchDestReportDTO SchDestReportDTO);

	List<Map<String, Object>> schDetailItems(int id);
	
}
