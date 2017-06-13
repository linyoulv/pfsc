 package com.yq.weixin.message.event;
 
 public class QRCodeEvent extends BaseEvent
 {
   private String EventKey;
   private String Ticket;
 
   public String getEventKey()
   {
     return this.EventKey;
   }
 
   public void setEventKey(String eventKey) {
     this.EventKey = eventKey;
   }
 
   public String getTicket() {
     return this.Ticket;
   }
 
   public void setTicket(String ticket) {
     this.Ticket = ticket;
   }
 }

