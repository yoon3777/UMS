package com.mono.ums.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.dto.SendDTO;
import com.mono.ums.dto.Send_SelectDTO;
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
	}

	// 메시지 전송
	public void send_insert(SendDTO sendDTO) {
		sendmapper.send_insert(sendDTO);
	}

	// 메시지 전송2
	public void send_insert2(SendDTO sendDTO) {
		sendmapper.send_insert2(sendDTO);
	}

	// 임시테이블 데이터 옮기기
	public void copy_dest(SendDTO sendDTO) {
		sendmapper.copy_dest(sendDTO);
	}

	// 임시테이블 비우기
	public void trunc_temp() {
		sendmapper.trunc_temp();
	}
	
	// SDK에 insert 할 정보 select
	public ArrayList<Send_SelectDTO> select_send(int msg_id){
		return sendmapper.select_send(msg_id);
	}
	
	// 예약별 sdk insert
	public void insert_sdk_sms(Send_SelectDTO send_SelectDTO){
		sendmapper.insert_sdk_sms(send_SelectDTO);
	}
	// 예약별 sdk insert
	public void insert_sdk_sms2(Send_SelectDTO send_SelectDTO){
		sendmapper.insert_sdk_sms(send_SelectDTO);
	}
}
