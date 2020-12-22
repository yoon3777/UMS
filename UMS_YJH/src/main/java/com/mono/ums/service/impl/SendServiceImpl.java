package com.mono.ums.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.dto.SendDTO;
import com.mono.ums.mapper.SendMapper;
import com.mono.ums.service.SendService;

@Service
public class SendServiceImpl implements SendService {
	@Autowired
	private SendMapper sendmapper;

	// 수신자 추가
	public void dest_insert(DestDTO destDTO) {
		sendmapper.dest_insert(destDTO);
	}

	// 추가한 수신자 목록
	public ArrayList<DestDTO> select_dest() {
		return sendmapper.select_dest();
	}
	
	public void dest_delete(String dest_num){
		sendmapper.dest_delete(dest_num);
	}
	
	public void send_insert(SendDTO sendDTO){
		System.out.println(sendDTO.getSch_type());			
		
		sendmapper.send_insert(sendDTO);
	}
}
