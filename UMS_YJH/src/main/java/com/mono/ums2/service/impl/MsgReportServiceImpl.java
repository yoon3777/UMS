package com.mono.ums2.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mono.ums2.dto.SchDestReportDTO;
import com.mono.ums2.dto.SchReportDTO;
import com.mono.ums2.mapper.MsgReportMapper;
import com.mono.ums2.service.MsgReportService;

@Service
@Transactional
public class MsgReportServiceImpl implements MsgReportService {

	@Autowired
	private MsgReportMapper msgReportMapper;

	@Override
	public Map<String, Object> schReportItems() throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map<String, Object>> listSMS = msgReportMapper.SMSReportItems();
		List<Map<String, Object>> listMMS = msgReportMapper.MMSReportItems();
		List<Map<String, Object>> listVMS = msgReportMapper.VMSReportItems();
		List<Map<String, Object>> listFMS = msgReportMapper.FMSReportItems();
		

		for (Map<String, Object> map : listSMS) {
			int id = Integer.parseInt(String.valueOf(map.get("MSGID")));
			msgReportMapper.updateSendSMS(id);
			List<SchDestReportDTO> schlist = msgReportMapper.schDestReportSMS(id);
			for (SchDestReportDTO dr : schlist) {
				dr.setId(id);
				msgReportMapper.updateDestSMS(dr);
			}
		}
		for (Map<String, Object> map : listMMS) {
			int id = Integer.parseInt(String.valueOf(map.get("MSGID")));
			msgReportMapper.updateSendMMS(id);
			List<SchDestReportDTO> schlist = msgReportMapper.schDestReportMMS(id);
			for (SchDestReportDTO dr : schlist) {
				dr.setId(id);
				msgReportMapper.updateDestMMS(dr);
			}
		}
		for (Map<String, Object> map : listVMS) {
			int id = Integer.parseInt(String.valueOf(map.get("MSGID")));
			msgReportMapper.updateSendVMS(id);
			List<SchDestReportDTO> schlist = msgReportMapper.schDestReportVMS(id);
			for (SchDestReportDTO dr : schlist) {
				dr.setId(id);
				msgReportMapper.updateDestVMS(dr);
			}
		}
		for (Map<String, Object> map : listFMS) {
			int id = Integer.parseInt(String.valueOf(map.get("MSGID")));
			msgReportMapper.updateSendFMS(id);
			List<SchDestReportDTO> schlist = msgReportMapper.schDestReportFMS(id);
			for (SchDestReportDTO dr : schlist) {
				dr.setId(id);
				msgReportMapper.updateDestFMS(dr);
			}
		}
		List<Map<String, Object>> list = msgReportMapper.schMsgSend();
		resultMap.put("LIST", list);
		
		return resultMap;
	}
	
	@Override
	public Map<String, Object> schDetailItems(int id) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map<String, Object>> lists = msgReportMapper.schDetailItems(id);
		resultMap.put("LIST", lists);
		
		return resultMap;
	}
	
	@Override
	public Map<String, Object> schReport(SchReportDTO schReportDTO) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map<String, Object>> lists = msgReportMapper.schReport(schReportDTO);
		
		resultMap.put("LIST", lists);
		
		return resultMap;
	}

}
