package com.mono.ums2.service;

import java.util.Map;

import com.mono.ums2.dto.SchReportDTO;

public interface MsgReportService {

	Map<String, Object> schReportItems() throws Exception;

	Map<String, Object> schDetailItems(int id) throws Exception;

	Map<String, Object> schReport(SchReportDTO schReportDTO) throws Exception;

}
