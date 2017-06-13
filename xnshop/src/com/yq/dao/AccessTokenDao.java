package com.yq.dao;

import com.yq.entity.AccessToken;
import java.util.List;
import java.util.Map;

public abstract interface AccessTokenDao
{
  public abstract int update(Map<String, Object> paramMap);

  public abstract List<AccessToken> listById(AccessToken paramAccessToken);
}

/* Location:           
 * Qualified Name:     com.yq.dao.AccessTokenDao
 * JD-Core Version:    0.6.2
 */