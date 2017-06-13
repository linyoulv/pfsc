package com.yq.dao;

import com.yq.entity.Coupons;
import java.util.List;
import java.util.Map;

public abstract interface CouponsDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int delete(Map<String, Object> paramMap);

  public abstract List<Coupons> list(Coupons paramCoupons);

  public abstract List<Coupons> listAll(Coupons paramCoupons);

  public abstract int count(Coupons paramCoupons);

  public abstract List<Coupons> listByCode(Coupons paramCoupons);

  public abstract List<Coupons> listById(Coupons paramCoupons);
}

/* Location:           
 * Qualified Name:     com.yq.dao.CouponsDao
 * JD-Core Version:    0.6.2
 */