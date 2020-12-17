package com.mono.ums.service;

import java.util.List;

import com.mono.ums.dto.DestDTO;

public interface SendService {

	// 수신자 추가
	void dest_insert(DestDTO destDTO);

	// 추가한 수신자 목록
	List<DestDTO> select_dest();

	// 메시지 전송
}
