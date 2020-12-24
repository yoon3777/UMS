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

	// 추가한 수신자 삭제
	public void dest_delete(String dest_num) {
		sendmapper.dest_delete(dest_num);
		System.out.println("수신자 삭제");
	}

	// 메시지 전송
	public void send_insert(SendDTO sendDTO) {
		sendmapper.send_insert(sendDTO);
		System.out.println("메시지 정보 입력");
	}

	// 메시지 전송2
	public void send_insert2(SendDTO sendDTO) {
		sendmapper.send_insert2(sendDTO);
		System.out.println("메시지 정보 입력22");
	}

	// 임시테이블 데이터 옮기기
	public void copy_dest(SendDTO sendDTO) {
		sendmapper.copy_dest(sendDTO);
		System.out.println("수신자정보 옮김");
	}

	// 임시테이블 비우기
	public void trunc_temp() {
		sendmapper.trunc_temp();
		System.out.println("임시테이블비움");
	}
}
