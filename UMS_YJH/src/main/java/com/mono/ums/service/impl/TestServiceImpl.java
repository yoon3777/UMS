package com.mono.ums.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mono.ums.dto.TestDTO;
import com.mono.ums.mapper.TestMapper;
import com.mono.ums.service.TestService;

@Service
public class TestServiceImpl implements TestService {
	@Autowired
	private TestMapper testmapper;

	@Override
	public List<TestDTO> viewAll() {
		return testmapper.viewAll();
	}
}
