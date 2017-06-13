package com.yq.dao;

import com.yq.entity.NewOrder;

public interface ListDao {

	public int select(NewOrder list);
	
	public int insert(NewOrder list);
	
}
