package com.yq.dao;

import com.yq.entity.Order;
import java.util.List;
import java.util.Map;

public abstract interface OrderDao
{
  public abstract int insert(Order paramOrder);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int delete(Map<String, Object> paramMap);

  public abstract List<Order> list(Order paramOrder);

  public abstract List<Order> listById(Order paramOrder);

  public abstract List<Order> listJson(Order paramOrder);

  public abstract int count(Order paramOrder);

  public abstract int listJsonCount(Order paramOrder);
  
  public abstract int paotuiinsert(Order paramOrder);

  public abstract List<Order> paotuilist(Order paramOrder);
  
 

  public abstract List<Order> jiesonglist(Order order);

  public abstract int jiesonginsert(Order order);

  public abstract int daibaninsert(Order order);

  public abstract List<Order> daibanlist(Order order);

   public abstract List<Order> list1(Order order);
  
  
}

 