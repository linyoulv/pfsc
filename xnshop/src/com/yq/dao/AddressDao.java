package com.yq.dao;

import com.yq.entity.Address;
import java.util.List;
import java.util.Map;

public abstract interface AddressDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int delete(Map<String, Object> paramMap);

  public abstract int sort(Map<String, Object> paramMap);

  public abstract List<Address> list(Address paramAddress);

  public abstract List<Address> listById(Address paramAddress);

  public abstract int count(Address paramAddress);
}

/* Location:           
 * Qualified Name:     com.yq.dao.AddressDao
 * JD-Core Version:    0.6.2
 */