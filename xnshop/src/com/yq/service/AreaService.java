 package com.yq.service;
 
 import com.yq.dao.AreaDao;
 import com.yq.entity.Area;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class AreaService
 {
 
   @Autowired
   private AreaDao areaDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.areaDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.areaDao.update(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.areaDao.upstatus(map);
   }
 
   public int sort(Map<String, Object> map) {
     return this.areaDao.sort(map);
   }
 
   public List<Area> list(Area area) {
     return this.areaDao.list(area);
   }
   public List<Area> listById(Area area) {
     return this.areaDao.listById(area);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.AreaService
 * JD-Core Version:    0.6.2
 */