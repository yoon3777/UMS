package com.mono.ums.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.mono.ums.mapper.MsgViewMapper;
import com.mono.ums.service.MsgViewService;

@Service
@Transactional
public class MsgViewServiceImpl implements MsgViewService{
	
	@Autowired
	private MsgViewMapper msgViewMapper;

	@Override
	public Map<String, Object> login(Model model) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		HttpServletRequest request = (HttpServletRequest) model.asMap().get("request");
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userId", userId);
		paramMap.put("userPw", userPw);
		
		int chk = msgViewMapper.login(paramMap);
		if(chk==1){
			resultMap.put("RESULT_CODE", "1");
		}else{
			resultMap.put("RESULT_CODE", "0");
		}
		
		return resultMap;
	}
	
	

}
