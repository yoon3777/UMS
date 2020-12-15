package com.mono.ums.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.DestDTO;
import com.mono.ums.mapper.SendMapper;
import com.mono.ums.service.SendService;


@Service
public class SendServiceImpl implements SendService{
	@Autowired
	private SendMapper sendmapper;

	public void dest_insert(DestDTO destDTO){
		sendmapper.dest_insert(destDTO);
		
		System.out.println(destDTO.getDEST_NAME());
	}
	

}
