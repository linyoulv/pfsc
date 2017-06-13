 package com.yq.service;
 
 import com.yq.dao.BannerDao;
 import com.yq.entity.Banner;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class BannerService
 {
 
   @Autowired
   private BannerDao bannerDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.bannerDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.bannerDao.update(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.bannerDao.upstatus(map);
   }
 
   public int sort(Map<String, Object> map) {
     return this.bannerDao.sort(map);
   }
 
   public List<Banner> list(Banner banner) {
     return this.bannerDao.list(banner);
   }
  
   public List<Banner> list1(Banner banner) {
	     return this.bannerDao.list1(banner);
	   }
   
   public List<Banner> list2(Banner banner) {
	     return this.bannerDao.list2(banner);
	   }
	 
   public List<Banner> listById(Banner banner) {
     return this.bannerDao.listById(banner);
   }
 }

