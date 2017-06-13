package com.yq.dao;

import com.yq.entity.Banner;
import java.util.List;
import java.util.Map;

public abstract interface BannerDao
{
  public abstract int insert(Map<String, Object> paramMap);

  public abstract int update(Map<String, Object> paramMap);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract int sort(Map<String, Object> paramMap);

  public abstract List<Banner> list(Banner paramBanner);

  public abstract int count(Banner paramBanner);

  public abstract List<Banner> listById(Banner paramBanner);
  
  public abstract List<Banner> list1(Banner paramBanner);
  
  public abstract List<Banner> list2(Banner paramBanner);
}
 