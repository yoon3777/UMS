package com.mono.ums2.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;

import com.mono.ums2.dto.DestTempDTO;
import com.mono.ums2.dto.MsgSendDTO;
import com.mono.ums2.dto.SdkSendDTO;
import com.mono.ums2.mapper.MsgSendMapper;
import com.mono.ums2.service.MsgSendService;

@Service
@Transactional
public class MsgSendServiceImpl implements MsgSendService {

	@Autowired
	private MsgSendMapper msgSendMapper;

	@Override
	public Map<String, Object> findSendItems(Model model) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		HttpServletRequest request = (HttpServletRequest) model.asMap().get("request");
		@SuppressWarnings("unchecked")
		Map<String, String[]> requestMap = request.getParameterMap();

		String[] destNm = requestMap.get("DEST_NM");
		String[] destNum = requestMap.get("DEST_NUM");

		Map<String, Object> paramMap = new HashMap<String, Object>();

		if (destNm != null) {
			paramMap.put("DEST_NM", destNm[0]);
		}

		if (destNum != null) {
			paramMap.put("DEST_NUM", destNum[0]);
		}

		long totalCnt = msgSendMapper.getSendItemTotalCnt(paramMap);
		List<Map<String, Object>> lists = msgSendMapper.findSendItems(paramMap);

		resultMap.put("TOTAL_CNT", totalCnt);
		resultMap.put("LIST", lists);

		return resultMap;
	}

	@Override
	public Map<String, String> sendMsg(Model model, MsgSendDTO msgSendDTO, SdkSendDTO sdkSendDTO) throws Exception {
		Map<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("RESULT_CODE", "1");
		if (msgSendDTO.getDepartNum()==null) {
			resultMap.put("RESULT_CODE", "0");
		} else {
			msgSendMapper.sendMsg(msgSendDTO);
			msgSendMapper.overWriteDest(msgSendDTO);
			int msgId = msgSendDTO.getMsgId();
			msgSendMapper.truncTempItems();
			ArrayList<SdkSendDTO> list = msgSendMapper.sendMsgSelect(msgId);
			for (SdkSendDTO sdk : list) {
				sdk.setDestInfo(sdk.getDestNm()+'^'+sdk.getDestNum());
				msgSendMapper.sendMsgSDK(sdk);
			}
		}
		return resultMap;

	}

	@Override
	public Map<String, String> addSendItem(Model model, DestTempDTO destTempDTO) throws Exception {
		Map<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("RESULT_CODE", "1");

		if (StringUtils.isEmpty(destTempDTO.getDestNum())) {
			resultMap.put("RESULT_CODE", "0");
		} else {
			msgSendMapper.addSendItem(destTempDTO);
		}

		return resultMap;
	}

}
