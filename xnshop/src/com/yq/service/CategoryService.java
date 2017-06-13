 package com.yq.service;
 
 import com.yq.dao.CategoryDao;
 import com.yq.entity.Category;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class CategoryService
 {
 
   @Autowired
   private CategoryDao categoryDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.categoryDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.categoryDao.update(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.categoryDao.upstatus(map);
   }
   public int sort(Map<String, Object> map) {
     return this.categoryDao.sort(map);
   }
   public List<Category> list(Category category) {
     return this.categoryDao.list(category);
   }
   public List<Category> listById(Category category) {
     return this.categoryDao.listById(category);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.CategoryService
 * JD-Core Version:    0.6.2
 */