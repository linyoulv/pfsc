 package com.yq.weixin.message.resp;
 
 public class TextMessage extends BaseMessage
 {
   private String Content;
 
   public String getContent()
   {
     return this.Content;
   }
 
   public void setContent(String content) {
     this.Content = content;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.resp.TextMessage
 * JD-Core Version:    0.6.2
 */