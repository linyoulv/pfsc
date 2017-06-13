 package com.yq.service;
 
 import com.yq.dao.FreightDao;
 import com.yq.entity.Freight;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class FreightService
 {
 
   @Autowired
   FreightDao freightDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.freightDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.freightDao.update(map);
   }
 
   public List<Freight> list(Freight freight) {
     return this.freightDao.list(freight);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.FreightService
 * JD-Core Version:    0.6.2
 */