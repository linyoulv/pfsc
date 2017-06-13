 package com.yq.weixin.util;
 
 import java.io.PrintStream;
 import org.apache.commons.lang3.StringUtils;
 
 public class EmojiFilter
 {
   public static boolean containsEmoji(String source)
   {
     if (StringUtils.isBlank(source)) {
       return false;
     }
 
     int len = source.length();
     for (int i = 0; i < len; i++) {
       char codePoint = source.charAt(i);
       if (isEmojiCharacter(codePoint)) {
         return true;
       }
     }
     return false;
   }
 
   private static boolean isEmojiCharacter(char codePoint) {
     return (codePoint == 0) || 
       (codePoint == '\t') || 
       (codePoint == '\n') || 
       (codePoint == '\r') || 
       ((codePoint >= ' ') && (codePoint <= 55295)) || 
       ((codePoint >= 57344) && (codePoint <= 65533)) || (
       (codePoint >= 65536) && (
       codePoint <= 1114111));
   }
 
   public static String filterEmoji(String source)
   {
     if (!containsEmoji(source)) {
       return source;
     }
 
     StringBuilder buf = null;
 
     int len = source.length();
 
     for (int i = 0; i < len; i++) {
       char codePoint = source.charAt(i);
 
       if (isEmojiCharacter(codePoint)) {
         if (buf == null) {
           buf = new StringBuilder(source.length());
         }
 
         buf.append(codePoint);
       }
 
     }
 
     if (buf == null) {
       return source;
     }
     if (buf.length() == len) {
       buf = null;
       return source;
     }
     return buf.toString();
   }
 
   public static void main(String[] args)
   {
     String s = "<body>口口213这是一个有各种内容的消息,  Hia Hia Hia !!!! xxxx@@@...*)!(@*$&@(&#!)@*)!&$!)@^%@(!&#. 口口口], ";
     filterEmoji(s);
     System.out.println(filterEmoji(s));
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.util.EmojiFilter
 * JD-Core Version:    0.6.2
 */