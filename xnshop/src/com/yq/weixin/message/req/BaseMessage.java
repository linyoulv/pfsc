 package com.yq.weixin.message.req;
 
 public class BaseMessage
 {
   private String ToUserName;
   private String FromUserName;
   private long CreateTime;
   private String MsgType;
   private long MsgId;
 
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
 
   public long getMsgId() {
     return this.MsgId;
   }
 
   public void setMsgId(long msgId) {
     this.MsgId = msgId;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.req.BaseMessage
 * JD-Core Version:    0.6.2
 */