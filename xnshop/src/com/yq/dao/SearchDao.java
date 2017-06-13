package com.yq.dao;

import com.yq.entity.Search;
import java.util.List;
import java.util.Map;

public abstract interface SearchDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int sort(Map<String, Object> paramMap);

  public abstract List<Search> list(Search paramSearch);

  public abstract int count(Search paramSearch);

  public abstract List<Search> listById(Search paramSearch);
}

/* Location:           
 * Qualified Name:     com.yq.dao.SearchDao
 * JD-Core Version:    0.6.2
 */