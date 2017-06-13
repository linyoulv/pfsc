package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Message;

public abstract interface MessageDao {
	
	public abstract int insert(Map<String, Object> paramMap);
	
	public abstract int update(Map<String, Object> paramMap);

	public abstract int delete(Map<String, Object> paramMap);

	public abstract List<Message> listById(Message message);

	//public abstract List<Message> list(Message message);
	
	

}
