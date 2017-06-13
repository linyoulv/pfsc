 package com.yq.entity;
 
 public class AccessToken
 {
   Integer id;
   String access_token;
   Long add_time;
 
   public Integer getId()
   {
     return this.id;
   }
   public void setId(Integer id) {
     this.id = id;
   }
   public String getAccess_token() {
     return this.access_token;
   }
   public void setAccess_token(String access_token) {
     this.access_token = access_token;
   }
   public Long getAdd_time() {
     return this.add_time;
   }
   public void setAdd_time(Long add_time) {
     this.add_time = add_time;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.AccessToken
 * JD-Core Version:    0.6.2
 */