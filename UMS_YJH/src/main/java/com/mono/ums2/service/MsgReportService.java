package com.mono.ums2.service;

import java.util.Map;

public interface MsgReportService {

	Map<String, Object> schReportItems() throws Exception;

	Map<String, Object> schDetailItems(int id) throws Exception;

}
