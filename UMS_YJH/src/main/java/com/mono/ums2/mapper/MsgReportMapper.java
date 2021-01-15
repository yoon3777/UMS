package com.mono.ums2.mapper;

import java.util.List;
import java.util.Map;

import com.mono.ums2.dto.SchDestReportDTO;
import com.mono.ums2.dto.SchReportDTO;

public interface MsgReportMapper {

	// 결과 조회 값 -----
	List<Map<String, Object>> SMSReportItems();
	List<Map<String, Object>> MMSReportItems();
	List<Map<String, Object>> VMSReportItems();
	List<Map<String, Object>> FMSReportItems();

	void updateSendSMS(int id);
	void updateSendMMS(int id);
	void updateSendVMS(int id);
	void updateSendFMS(int id);
	
	List<SchDestReportDTO> schDestReportSMS(int id);
	List<SchDestReportDTO> schDestReportMMS(int id);
	List<SchDestReportDTO> schDestReportVMS(int id);
	List<SchDestReportDTO> schDestReportFMS(int id);

	void updateDestSMS(SchDestReportDTO SchDestReportDTO);
	void updateDestMMS(SchDestReportDTO SchDestReportDTO);
	void updateDestVMS(SchDestReportDTO SchDestReportDTO);
	void updateDestFMS(SchDestReportDTO SchDestReportDTO);

	// 결과 조회
	List<Map<String, Object>> schMsgSend();
	
	// 상세 결과 조회
	List<Map<String, Object>> schDetailItems(int id);
	
	// 검색
	List<Map<String, Object>> schReport(SchReportDTO schReportDTO);

}
