 package com.yq.service;
 
 import com.yq.dao.GoodsDao;
 import com.yq.entity.Goods;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class GoodsService
 {
 
   @Autowired
   private GoodsDao goodsDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.goodsDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.goodsDao.update(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.goodsDao.upstatus(map);
   }
 
   public int upisrec(Map<String, Object> map) {
     return this.goodsDao.upisrec(map);
   }
 
   public List<Goods> list(Goods goods) {
     return this.goodsDao.list(goods);
   }
   public int count(Goods goods) {
     return this.goodsDao.count(goods);
   }
 
   public List<Goods> listById(Goods goods) {
     return this.goodsDao.listById(goods);
   }
 }
 