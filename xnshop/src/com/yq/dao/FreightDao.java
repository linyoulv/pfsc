package com.yq.dao;

import com.yq.entity.Freight;
import java.util.List;
import java.util.Map;

public abstract interface FreightDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract List<Freight> list(Freight paramFreight);
}

/* Location:           
 * Qualified Name:     com.yq.dao.FreightDao
 * JD-Core Version:    0.6.2
 */