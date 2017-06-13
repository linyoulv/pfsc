 package com.yq.service;
 
 import com.yq.dao.AccessTokenDao;
 import com.yq.entity.AccessToken;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class AccessTokenService
 {
 
   @Autowired
   public AccessTokenDao accessTokenDao;
 
   public int update(Map<String, Object> map)
   {
     return this.accessTokenDao.update(map);
   }
 
   public List<AccessToken> listById(AccessToken accessToken)
   {
     return this.accessTokenDao.listById(accessToken);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.AccessTokenService
 * JD-Core Version:    0.6.2
 */