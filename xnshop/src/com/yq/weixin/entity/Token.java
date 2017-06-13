 package com.yq.weixin.entity;
 
 public class Token
 {
   private String accessToken;
   private int expiresIn;
 
   public String getAccessToken()
   {
     return this.accessToken;
   }
   public void setAccessToken(String accessToken) {
     this.accessToken = accessToken;
   }
   public int getExpiresIn() {
     return this.expiresIn;
   }
   public void setExpiresIn(int expiresIn) {
     this.expiresIn = expiresIn;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.entity.Token
 * JD-Core Version:    0.6.2
 */