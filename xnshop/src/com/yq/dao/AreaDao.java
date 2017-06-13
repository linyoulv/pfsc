package com.yq.dao;

import com.yq.entity.Area;
import java.util.List;
import java.util.Map;

public abstract interface AreaDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int sort(Map<String, Object> paramMap);

  public abstract List<Area> list(Area paramArea);

  public abstract List<Area> listById(Area paramArea);
}

/* Location:           
 * Qualified Name:     com.yq.dao.AreaDao
 * JD-Core Version:    0.6.2
 */