 package com.yq.weixin.message.event;
 
 public class BaseEvent
 {
   private String ToUserName;
   private String FromUserName;
   private long CreateTime;
   private String MsgType;
   private String Event;
 
   public String getToUserName()
   {
     return this.ToUserName;
   }
 
   public void setToUserName(String toUserName) {
     this.ToUserName = toUserName;
   }
 
   public String getFromUserName() {
     return this.FromUserName;
   }
 
   public void setFromUserName(String fromUserName) {
     this.FromUserName = fromUserName;
   }
 
   public long getCreateTime() {
     return this.CreateTime;
   }
 
   public void setCreateTime(long createTime) {
     this.CreateTime = createTime;
   }
 
   public String getMsgType() {
     return this.MsgType;
   }
 
   public void setMsgType(String msgType) {
     this.MsgType = msgType;
   }
 
   public String getEvent() {
     return this.Event;
   }
 
   public void setEvent(String event) {
     this.Event = event;
   }
 }

