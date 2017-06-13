package com.yq.service;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.MerchantDao;
import com.yq.entity.Merchant;

@Service
public class MerchantService {
	
	  private Logger log = Logger.getLogger("");
	
	 @Autowired
	   private MerchantDao merchantDao;
	 
	   public int insert(Map<String, Object> map)
	   {
	     return this.merchantDao.insert(map);
	   }
	 
	   public int update(Map<String, Object> map) {
	     return this.merchantDao.update(map);
	   }
	 
	   public int upstatus(Map<String, Object> map) {
	     return this.merchantDao.upstatus(map);
	   }
	 
	   public int upisrec(Map<String, Object> map) {
	     return this.merchantDao.upisrec(map);
	   }
	 
	   public List<Merchant> list(Merchant merchant) {
	     return this.merchantDao.list(merchant);
	   }
	   public int count(Merchant merchant) {
	     return this.merchantDao.count(merchant);
	   }
	 
	   public List<Merchant> listById(Merchant merchant) {
	     return this.merchantDao.listById(merchant);
	   }
	   
	   public String isExist(Map<String, Object> map) { 
		   try { 
			   return String.valueOf(this.merchantDao.isExist(map));
			  
	     } catch (Exception e) {
	       this.log.info("merchantServiceImpl>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + e.getMessage());
	     }
		   return "-1";
	   
	   }
	   
	   public int delete(Map<String, Object> map) {
		     return this.merchantDao.delete(map);
		   }
		 
	 

}
