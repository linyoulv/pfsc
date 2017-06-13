 package com.yq.weixin.message.resp;
 
 public class Article
 {
   private String Title;
   private String Description;
   private String PicUrl;
   private String Url;
 
   public String getTitle()
   {
     return this.Title;
   }
 
   public void setTitle(String title) {
     this.Title = title;
   }
 
   public String getDescription() {
     return this.Description == null ? "" : this.Description;
   }
 
   public void setDescription(String description) {
     this.Description = description;
   }
 
   public String getPicUrl() {
     return this.PicUrl == null ? "" : this.PicUrl;
   }
 
   public void setPicUrl(String picUrl) {
     this.PicUrl = picUrl;
   }
 
   public String getUrl() {
     return this.Url == null ? "" : this.Url;
   }
 
   public void setUrl(String url) {
     this.Url = url;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.resp.Article
 * JD-Core Version:    0.6.2
 */