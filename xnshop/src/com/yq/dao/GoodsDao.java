package com.yq.dao;

import com.yq.entity.Goods;
import java.util.List;
import java.util.Map;

public abstract interface GoodsDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int upisrec(Map<String, Object> paramMap);

  public abstract List<Goods> list(Goods paramGoods);

  public abstract int count(Goods paramGoods);

  public abstract List<Goods> listById(Goods paramGoods);
}

 