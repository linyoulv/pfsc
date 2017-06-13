package com.yq.dao;

import java.util.Map;

public abstract interface AdminDao
{
  public abstract int isExist(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract String listById(Map<String, Object> paramMap);
}

 