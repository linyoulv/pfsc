 package com.yq.weixin.message.req;
 
 public class VoiceMessage extends BaseMessage
 {
   private String MediaId;
   private String Format;
   private String Recognition;
 
   public String getMediaId()
   {
     return this.MediaId;
   }
 
   public void setMediaId(String mediaId) {
     this.MediaId = mediaId;
   }
 
   public String getFormat() {
     return this.Format;
   }
 
   public void setFormat(String format) {
     this.Format = format;
   }
 
   public String getRecognition() {
     return this.Recognition;
   }
 
   public void setRecognition(String recognition) {
     this.Recognition = recognition;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.req.VoiceMessage
 * JD-Core Version:    0.6.2
 */