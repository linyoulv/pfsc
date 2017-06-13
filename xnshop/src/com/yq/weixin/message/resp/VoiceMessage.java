 package com.yq.weixin.message.resp;
 
 public class VoiceMessage extends BaseMessage
 {
   private Voice Voice;
 
   public Voice getVoice()
   {
     return this.Voice;
   }
 
   public void setVoice(Voice voice) {
     this.Voice = voice;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.resp.VoiceMessage
 * JD-Core Version:    0.6.2
 */