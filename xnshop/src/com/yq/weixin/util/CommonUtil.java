 package com.yq.weixin.util;
 
 import com.yq.entity.AccessToken;
 import com.yq.service.AccessTokenService;
 import com.yq.weixin.pojo.Token;
 import java.io.BufferedReader;
 import java.io.InputStream;
 import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.PrintStream;
 import java.io.UnsupportedEncodingException;
 import java.net.ConnectException;
 import java.net.URL;
 import java.net.URLEncoder;
 import java.security.SecureRandom;
 import java.util.Date;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.net.ssl.HttpsURLConnection;
 import javax.net.ssl.SSLContext;
 import javax.net.ssl.SSLSocketFactory;
 import javax.net.ssl.TrustManager;
 import net.sf.json.JSONException;
 import net.sf.json.JSONObject;
 import org.slf4j.Logger;
 import org.slf4j.LoggerFactory;
 import org.springframework.context.support.AbstractApplicationContext;
 import org.springframework.context.support.ClassPathXmlApplicationContext;
 import org.springframework.stereotype.Controller;
 
 @Controller
 public class CommonUtil
 {
   AccessToken accessToken = new AccessToken();
   private static Logger log = LoggerFactory.getLogger(CommonUtil.class);
   public static final String token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";
   public static final String token_url2 = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=APPSECRET&code=CODE&grant_type=authorization_code";
 
   public static JSONObject httpsRequest(String requestUrl, String requestMethod, String outputStr)
   {
     JSONObject jsonObject = null;
     try
     {
       TrustManager[] tm = { new MyX509TrustManager() };
       SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
       sslContext.init(null, tm, new SecureRandom());
 
       SSLSocketFactory ssf = sslContext.getSocketFactory();
 
       URL url = new URL(requestUrl);
       HttpsURLConnection conn = (HttpsURLConnection)url.openConnection();
       conn.setSSLSocketFactory(ssf);
 
       conn.setDoOutput(true);
       conn.setDoInput(true);
       conn.setUseCaches(false);
 
       conn.setRequestMethod(requestMethod);
 
       if (outputStr != null) {
         OutputStream outputStream = conn.getOutputStream();
 
         outputStream.write(outputStr.getBytes("UTF-8"));
         outputStream.close();
       }
 
       InputStream inputStream = conn.getInputStream();
       InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
 
       BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
       String str = null;
       StringBuffer buffer = new StringBuffer();
       while ((str = bufferedReader.readLine()) != null) {
         buffer.append(str);
       }
 
       bufferedReader.close();
       inputStreamReader.close();
       inputStream.close();
       inputStream = null;
       conn.disconnect();
       jsonObject = JSONObject.fromObject(buffer.toString());
     } catch (ConnectException ce) {
       log.error("连接超时：{}", ce);
     } catch (Exception e) {
       log.error("https请求异常：{}", e);
     }
     return jsonObject;
   }
 
   public Token getToken(String appid, String appsecret)
   {
     Long nowtime = Long.valueOf(new Date().getTime());
     AbstractApplicationContext ctx = new ClassPathXmlApplicationContext(new String[] { "classpath:applicationContext.xml" });
     AccessTokenService accessTokenService = (AccessTokenService)ctx.getBean("accessTokenService");
     List token_list = accessTokenService.listById(this.accessToken);
     System.out.println(token_list.size() + ((AccessToken)token_list.get(0)).getAccess_token());
     Long add_time = ((AccessToken)token_list.get(0)).getAdd_time();
     Token token = new Token();
     if (add_time.longValue() + 7200000L <= nowtime.longValue()) {
       String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET".replace("APPID", appid).replace("APPSECRET", appsecret);
 
       JSONObject jsonObject = httpsRequest(requestUrl, "GET", null);
       try
       {
         token.setAccessToken(jsonObject.getString("access_token"));
         token.setExpiresIn(jsonObject.getInt("expires_in"));
         Map map = new HashMap();
         map.put("add_time", nowtime);
         map.put("access_token", jsonObject.getString("access_token"));
         accessTokenService.update(map);
       }
       catch (JSONException e) {
         token = null;
 
         log.error("获取token失败 errcode:{} errmsg:{}", Integer.valueOf(jsonObject.getInt("errcode")), jsonObject.getString("errmsg"));
         System.out.println("-----------获取token失败");
       }
     }
     else {
       token.setExpiresIn(7200);
       token.setAccessToken(((AccessToken)token_list.get(0)).getAccess_token());
     }
     return token;
   }
 
   public static String urlEncodeUTF8(String source)
   {
     String result = source;
     try {
       result = URLEncoder.encode(source, "utf-8");
     } catch (UnsupportedEncodingException e) {
       e.printStackTrace();
     }
     return result;
   }
 
   public static String getFileExt(String contentType)
   {
     String fileExt = "";
     if ("image/jpeg".equals(contentType))
       fileExt = ".jpg";
     else if ("audio/mpeg".equals(contentType))
       fileExt = ".mp3";
     else if ("audio/amr".equals(contentType))
       fileExt = ".amr";
     else if ("video/mp4".equals(contentType))
       fileExt = ".mp4";
     else if ("video/mpeg4".equals(contentType))
       fileExt = ".mp4";
     return fileExt;
   }
   public static void main(String[] args) {
     AbstractApplicationContext ctx = new ClassPathXmlApplicationContext(new String[] { "classpath:applicationContext.xml" });
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.util.CommonUtil
 * JD-Core Version:    0.6.2
 */