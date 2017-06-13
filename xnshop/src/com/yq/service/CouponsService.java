 package com.yq.service;
 
 import com.yq.dao.CouponsDao;
 import com.yq.entity.Coupons;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class CouponsService
 {
 
   @Autowired
   private CouponsDao couponsDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.couponsDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.couponsDao.update(map);
   }
   public int upstatus(Map<String, Object> map) {
     return this.couponsDao.upstatus(map);
   }
   public int delete(Map<String, Object> map) {
     return this.couponsDao.delete(map);
   }
 
   public List<Coupons> list(Coupons coupons) {
     return this.couponsDao.list(coupons);
   }
   public List<Coupons> listAll(Coupons coupons) {
     return this.couponsDao.listAll(coupons);
   }
   public int count(Coupons coupons) {
     return this.couponsDao.count(coupons);
   }
   public List<Coupons> listByCode(Coupons coupons) {
     return this.couponsDao.listByCode(coupons);
   }
 
   public List<Coupons> listById(Coupons coupons) {
     return this.couponsDao.listById(coupons);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.CouponsService
 * JD-Core Version:    0.6.2
 */