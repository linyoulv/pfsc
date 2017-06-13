package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Ip;

public abstract interface IpDao
{
	public abstract int isExist(Map<String, Object> paramMap);
	
  public abstract int insert(Map<String, Object> paramMap);
  
  public abstract List<Ip> list();
  
  public abstract int update(Map<String, Object> paramMap);
  
  public abstract int getnum(Map<String, Object> paramMap);
}
