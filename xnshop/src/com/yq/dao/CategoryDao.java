package com.yq.dao;

import com.yq.entity.Category;
import java.util.List;
import java.util.Map;

public abstract interface CategoryDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int sort(Map<String, Object> paramMap);

  public abstract List<Category> list(Category paramCategory);

  public abstract List<Category> listById(Category paramCategory);
}

/* Location:           
 * Qualified Name:     com.yq.dao.CategoryDao
 * JD-Core Version:    0.6.2
 */