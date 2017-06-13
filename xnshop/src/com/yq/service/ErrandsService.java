package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.ErrandsDao;
import com.yq.entity.Category;
import com.yq.entity.Errands;
 
@Service
public class ErrandsService {
	
	   @Autowired
	   ErrandsDao errandsDao; 
	 
	   public int insert(Map<String, Object> map)
	   {
	     return this.errandsDao.insert(map);
	   }
	 
	   public int update(Map<String, Object> map) {
	     return this.errandsDao.update(map);
	   }
	 
	   public List<Errands> list(Errands errands) {
	     return this.errandsDao.list(errands);
	   }
	   
	   public List<Errands> list1(Errands errands) {
		     return this.errandsDao.list1(errands);
		   }
	   
	   public List<Errands> listById(Errands errands) {
		 
		 return this.errandsDao.listById(errands);
	   
	   
	   }
	   
	   public List<Errands> daibanlist(Errands errands) {
		     return this.errandsDao.daibanlist(errands);
		   }
	   
	   
	   public List<Errands> jiesonglist(Errands errands) {
		     return this.errandsDao.jiesonglist(errands);
		   }

}
