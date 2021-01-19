package com.mono.ums.service;

import java.util.Map;

import org.springframework.ui.Model;

public interface MsgLoginService {

	Map<String, Object> login(Model model) throws Exception;

}
