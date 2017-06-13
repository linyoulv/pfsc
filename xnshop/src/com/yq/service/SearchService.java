 package com.yq.service;
 
 import com.yq.dao.SearchDao;
 import com.yq.entity.Search;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class SearchService
 {
 
   @Autowired
   private SearchDao searchDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.searchDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.searchDao.update(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.searchDao.upstatus(map);
   }
 
   public int sort(Map<String, Object> map) {
     return this.searchDao.sort(map);
   }
 
   public List<Search> list(Search search) {
     return this.searchDao.list(search);
   }
 
   public int count(Search search) {
     return this.searchDao.count(search);
   }
 
   public List<Search> listById(Search search) {
     return this.searchDao.listById(search);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.SearchService
 * JD-Core Version:    0.6.2
 */