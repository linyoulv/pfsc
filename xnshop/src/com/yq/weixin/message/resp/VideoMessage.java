 package com.yq.weixin.message.resp;
 
 public class VideoMessage extends BaseMessage
 {
   private Video Video;
 
   public Video getVideo()
   {
     return this.Video;
   }
 
   public void setVideo(Video video) {
     this.Video = video;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.message.resp.VideoMessage
 * JD-Core Version:    0.6.2
 */