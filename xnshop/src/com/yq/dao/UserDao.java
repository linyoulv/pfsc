package com.yq.dao;

import com.yq.entity.User;
import java.util.List;
import java.util.Map;

public abstract interface UserDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int uparea(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int upmbertime(Map<String, Object> paramMap);

  public abstract List<User> list(User paramUser);

  public abstract int count(User paramUser);

  public abstract List<User> listById(User paramUser);

  public abstract int isMember(User paramUser);
}

/* Location:           
 * Qualified Name:     com.yq.dao.UserDao
 * JD-Core Version:    0.6.2
 */