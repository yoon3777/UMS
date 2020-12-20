package com.mono.ums.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.DestDTO;
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
	public List<DestDTO> select_dest() {
		for (DestDTO a : sendmapper.select_dest()) {
			System.out.println("수신자이름 : " + a.toString());
		}
		return sendmapper.select_dest();
	}
}
