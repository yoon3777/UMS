package com.mono.ums.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.mapper.SendMapper;


@Service
public class SendServiceImpl {
	@Autowired
	private SendMapper sendmapper;

	public void dest_insert(DestDTO destDTO){
		sendmapper.dest_insert(destDTO);
	}
	

}
