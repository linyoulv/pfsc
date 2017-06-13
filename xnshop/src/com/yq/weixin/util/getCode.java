 package com.yq.weixin.util;
 
 import java.io.BufferedInputStream;
 import java.io.File;
 import java.io.FileOutputStream;
 import java.net.URL;
 import javax.net.ssl.HttpsURLConnection;
 import net.sf.json.JSONObject;
 
 public class getCode
 {
   public static String createTempQRCode(String accessToken, int sceneId)
   {
     String ticket = null;
 
     String requestUrl = "https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=ACCESS_TOKEN";
     requestUrl = requestUrl.replace("ACCESS_TOKEN", accessToken);
 
     String jsonMsg = "{\"expire_seconds\": 1800,\"action_name\": \"QR_SCENE\", \"action_info\": {\"scene\": {\"scene_id\": %d}}}";
 
     JSONObject jsonObject = CommonUtil.httpsRequest(requestUrl, "POST", String.format(jsonMsg, new Object[] { Integer.valueOf(sceneId) }));
 
     if (jsonObject != null) {
       try {
         ticket = jsonObject.getString("ticket");
       }
       catch (Exception e) {
         int errorCode = jsonObject.getInt("errcode");
         String str1 = jsonObject.getString("errmsg");
       }
     }
 
     return ticket;
   }
 
   public static String createPermanentQRCode(String accessToken, int sceneId)
   {
     String ticket = null;
 
     String requestUrl = "https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=ACCESS_TOKEN";
     requestUrl = requestUrl.replace("ACCESS_TOKEN", accessToken);
 
     String jsonMsg = "{\"action_name\": \"QR_LIMIT_SCENE\", \"action_info\": {\"scene\": {\"scene_id\": %d}}}";
 
     JSONObject jsonObject = CommonUtil.httpsRequest(requestUrl, "POST", String.format(jsonMsg, new Object[] { Integer.valueOf(sceneId) }));
 
     if (jsonObject != null) {
       try {
         ticket = jsonObject.getString("ticket");
       }
       catch (Exception e) {
         int errorCode = jsonObject.getInt("errcode");
         String str1 = jsonObject.getString("errmsg");
       }
     }
 
     return ticket;
   }
 
   public static String getQRCode(String ticket, String savePath)
   {
     String filePath = null;
 
     String requestUrl = "https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=TICKET";
     requestUrl = requestUrl.replace("TICKET", CommonUtil.urlEncodeUTF8(ticket));
     try
     {
       URL url = new URL(requestUrl);
       HttpsURLConnection conn = (HttpsURLConnection)url.openConnection();
       conn.setDoInput(true);
       conn.setRequestMethod("GET");
 
       if (!savePath.endsWith("/")) {
         savePath = savePath + "/";
       }
 
       filePath = savePath + ticket + ".jpg";
 
       BufferedInputStream bis = new BufferedInputStream(conn.getInputStream());
       FileOutputStream fos = new FileOutputStream(new File(filePath));
       byte[] buf = new byte[8096];
       int size = 0;
       while ((size = bis.read(buf)) != -1) {
         fos.write(buf, 0, size);
       }
       fos.close();
       bis.close();
 
       conn.disconnect();
     }
     catch (Exception e) {
       filePath = null;
     }
 
     return requestUrl;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.util.getCode
 * JD-Core Version:    0.6.2
 */