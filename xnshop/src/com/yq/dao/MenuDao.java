package com.yq.dao;

import com.yq.entity.Menu;
import java.util.List;
import java.util.Map;

public abstract interface MenuDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract List<Menu> list(Menu paramMenu);

  public abstract int count(Menu paramMenu);

  public abstract List<Menu> listById(Menu paramMenu);
}

/* Location:           
 * Qualified Name:     com.yq.dao.MenuDao
 * JD-Core Version:    0.6.2
 */