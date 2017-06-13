package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.NewOrder;
import com.yq.entity.Order;

public abstract interface  NewOrderDao {
	
	
	  public abstract int insert(NewOrder paramOrder);

	 /* public abstract int upstatus(Map<String, Object> paramMap);

	  public abstract int delete(Map<String, Object> paramMap);

	  public abstract List<Order> list(Order paramOrder);

	  public abstract List<Order> listById(Order paramOrder);

	  public abstract List<Order> listJson(Order paramOrder);

	  public abstract int count(Order paramOrder);

	  public abstract int listJsonCount(Order paramOrder);*/

}
