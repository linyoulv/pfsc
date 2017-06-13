 package com.yq.service;
 
 import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.IpDao;
import com.yq.entity.Ip;
 
 @Service
 public class IpService
 {
 
   @Autowired
   private IpDao ipDao;
 
 
   public List<Ip> list()
   {
	   return this.ipDao.list();
   }
   
   public String insert(Map<String, Object> map)
   {
	   int isexit = ipDao.isExist(map);
	   if(isexit==0){
		   return String.valueOf(ipDao.insert(map));
	   }else{
		   return String.valueOf(ipDao.update(map));
	   }
   }
 }
