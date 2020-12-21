package com.mono.ums.service;

import java.util.ArrayList;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.dto.SendDTO;

public interface SendService {

	// 수신자 추가
	void dest_insert(DestDTO destDTO);

	// 추가한 수신자 목록
	ArrayList<DestDTO> select_dest();

	// 추가한 수신자 삭제
	void dest_delete(String dest_num);

	// 메시지 전송
	void send_insert(SendDTO sendDTO);
}
