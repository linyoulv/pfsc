 package com.yq.weixin.util;
 
 import com.yq.weixin.menu.Menu;
 import java.io.PrintStream;
 import net.sf.json.JSONObject;
 import org.slf4j.Logger;
 import org.slf4j.LoggerFactory;
 
 public class MenuUtil
 {
   private static Logger log = LoggerFactory.getLogger(MenuUtil.class);
   public static final String menu_create_url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";
   public static final String menu_get_url = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token=ACCESS_TOKEN";
   public static final String menu_delete_url = "https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=ACCESS_TOKEN";
 
   public static boolean createMenu(Menu menu, String accessToken)
   {
     boolean result = false;
     String url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN".replace("ACCESS_TOKEN", accessToken);
 
     String jsonMenu = JSONObject.fromObject(menu).toString();
 
     JSONObject jsonObject = CommonUtil.httpsRequest(url, "POST", jsonMenu);
 
     if (jsonObject != null) {
       int errorCode = jsonObject.getInt("errcode");
       String errorMsg = jsonObject.getString("errmsg");
       if (errorCode == 0) {
         result = true;
       } else {
         result = false;
       }
     }
 
     return result;
   }
 
   public static String getMenu(String accessToken)
   {
     String result = null;
     String requestUrl = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token=ACCESS_TOKEN".replace("ACCESS_TOKEN", accessToken);
 
     JSONObject jsonObject = CommonUtil.httpsRequest(requestUrl, "GET", null);
 
     if (jsonObject != null) {
       result = jsonObject.toString();
     }
     return result;
   }
 
   public static boolean deleteMenu(String accessToken)
   {
     boolean result = false;
     String requestUrl = "https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=ACCESS_TOKEN".replace("ACCESS_TOKEN", accessToken);
 
     JSONObject jsonObject = CommonUtil.httpsRequest(requestUrl, "GET", null);
 
     if (jsonObject != null) {
       int errorCode = jsonObject.getInt("errcode");
       String errorMsg = jsonObject.getString("errmsg");
       if (errorCode == 0) {
         result = true;
       } else {
         result = false;
       }
     }
     return result;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.util.MenuUtil
 * JD-Core Version:    0.6.2
 */