package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Errands;

 

public abstract interface ErrandsDao {
	
	 public abstract int insert(Map<String, Object> paramMap);

	  public abstract int update(Map<String, Object> paramMap);

	  public abstract List<Errands> list(Errands paramFreight);
	  
	  public abstract List<Errands> listById(Errands paramFreight);
	  
	 
	  
	  public abstract List<Errands> jiesonglist(Errands paramFreight);

	public abstract List<Errands> daibanlist(Errands errands);

	public abstract List<Errands> list1(Errands errands);

}
