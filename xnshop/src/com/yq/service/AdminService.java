 package com.yq.service;
 
 import com.google.gson.internal.Primitives;
import com.yq.dao.AdminDao;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
 @Service
 public class AdminService
 {
   private Logger log = Logger.getLogger("");
 
   @Autowired
   private AdminDao adminDao;
 
   public String isExist(Map<String, Object> map) { 
	   try { 
		   return String.valueOf(this.adminDao.isExist(map));
		  
     } catch (Exception e) {
       this.log.info("adminServiceImpl>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + e.getMessage());
     }
	   return "-1";
   
   }
 
   public String update(Map<String, Object> map)
   {
     try
     {
       return String.valueOf(this.adminDao.update(map));
     } catch (Exception e) {
       this.log.info("update>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + e.getMessage());
     }return "-1";
   }
 
   public String listById(Map<String, Object> map)
   {
     return this.adminDao.listById(map);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.AdminService
 * JD-Core Version:    0.6.2
 */