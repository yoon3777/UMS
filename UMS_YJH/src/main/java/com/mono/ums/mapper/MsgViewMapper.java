package com.mono.ums.mapper;

import java.util.Map;

public interface MsgViewMapper {

	Map<String, Object> login(Map<String, Object> paramMap);

	int loginChk(Map<String, Object> paramMap);
}
