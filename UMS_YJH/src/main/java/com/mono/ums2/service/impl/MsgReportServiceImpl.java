package com.mono.ums2.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mono.ums2.dto.SchDestReportDTO;
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
		List<Map<String, Object>> lists = msgReportMapper.schReportItems();
		resultMap.put("LIST", lists);

		for (Map<String, Object> map : lists) {
			int id = Integer.parseInt(String.valueOf(map.get("MSGID")));
			msgReportMapper.updateSend(id);
			List<SchDestReportDTO> schlist = msgReportMapper.schDestReport(id);
			for (SchDestReportDTO dr : schlist) {
				dr.setId(id);
				msgReportMapper.updateDest(dr);
			}
		}
		return resultMap;
	}
	
	@Override
	public Map<String, Object> schDetailItems(int id) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map<String, Object>> lists = msgReportMapper.schDetailItems(id);
		resultMap.put("LIST", lists);
		
		return resultMap;
	}

}
