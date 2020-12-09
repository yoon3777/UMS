package com.mono.ums.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.TestDTO;
import com.mono.ums.mapper.SendMapper;


@Service
public class SendServiceImpl {
	@Autowired
	private SendMapper sendmapper;


}
