 package com.yq.weixin.message.event;
 
 public class MenuEvent extends BaseEvent
 {
   private String EventKey;
 
   public String getEventKey()
   {
     return this.EventKey;
   }
 
   public void setEventKey(String eventKey) {
     this.EventKey = eventKey;
   }
 }

