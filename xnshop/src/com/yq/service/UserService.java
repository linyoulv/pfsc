 package com.yq.service;
 
 import com.yq.dao.UserDao;
 import com.yq.entity.User;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class UserService
 {
 
   @Autowired
   private UserDao userDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.userDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.userDao.update(map);
   }
 
   public int uparea(Map<String, Object> map) {
     return this.userDao.uparea(map);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.userDao.upstatus(map);
   }
 
   public int upmbertime(Map<String, Object> map) {
     return this.userDao.upmbertime(map);
   }
 
   public List<User> list(User user)
   {
     return this.userDao.list(user);
   }
   public int count(User user) {
     return this.userDao.count(user);
   }
 
   public List<User> listById(User user) {
     return this.userDao.listById(user);
   }
 
   public int isMember(User user) {
     return this.userDao.isMember(user);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.UserService
 * JD-Core Version:    0.6.2
 */