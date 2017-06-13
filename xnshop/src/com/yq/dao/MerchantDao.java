package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Merchant;

public  abstract interface  MerchantDao {
	
	
	  public abstract int insert(Map<String, Object> paramMap);

	  public abstract int update(Map<String, Object> paramMap);

	  public abstract int upstatus(Map<String, Object> paramMap);

	  public abstract int upisrec(Map<String, Object> paramMap);

	  public abstract List<Merchant> list(Merchant param);

	  public abstract int count(Merchant paramGoods);

	  public abstract List<Merchant> listById(Merchant param);
	  
	  public abstract int isExist(Map<String, Object> paramMap);
	  
	  public abstract int delete(Map<String, Object> paramMap);
	  

}
