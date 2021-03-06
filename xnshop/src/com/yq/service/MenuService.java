 package com.yq.service;
 
 import com.yq.dao.MenuDao;
 import com.yq.entity.Menu;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class MenuService
 {
 
   @Autowired
   private MenuDao menuDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.menuDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.menuDao.update(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.menuDao.upstatus(map);
   }
 
   public List<Menu> list(Menu menu) {
     return this.menuDao.list(menu);
   }
   public int count(Menu menu) {
     return this.menuDao.count(menu);
   }
 
   public List<Menu> listById(Menu menu) {
     return this.menuDao.listById(menu);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.MenuService
 * JD-Core Version:    0.6.2
 */