package com.mono.ums.service;

import java.util.Map;

import org.springframework.ui.Model;

public interface MsgViewService {

	Map<String, Object> login(Model model) throws Exception;

}
