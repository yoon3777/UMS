package com.mono.ums.mapper;

import java.util.ArrayList;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.dto.SendDTO;

public interface SendMapper {

	// 수신자 추가
	void dest_insert(DestDTO destDTO);

	// 추가한 수신자 목록
	ArrayList<DestDTO> select_dest();

	// 추가한 수신자 삭제
	void dest_delete(String dest_num);

	// 메시지 전송
	void send_insert(SendDTO sendDTO);

	// 메시지 전송
	void send_insert2(SendDTO sendDTO);

	// 임시테이블 데이터 옮기기
	void copy_dest(SendDTO sendDTO);

	// 임시테이블 비우기
	void trunc_temp();
}
