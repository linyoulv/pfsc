package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Guarantee;
 

public abstract interface GuaranteeDao {
	
	 public abstract int insert(Map<String, Object> paramMap);

	  public abstract int update(Map<String, Object> paramMap);

	  public abstract List<Guarantee> list(Guarantee paramFreight);

}
