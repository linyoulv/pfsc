 package com.yq.util;
 
 import com.yq.weixin.pojo.WeixinUserInfo;
 import com.yq.weixin.util.AdvancedUtil;
 import com.yq.weixin.util.CommonUtil;
 import com.yq.weixin.util.StringUtil;
 import java.io.InputStream;
 import java.io.PrintStream;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpSession;
 import net.sf.json.JSONObject;
 import org.apache.log4j.Logger;
 import org.dom4j.Document;
 import org.dom4j.Element;
 import org.dom4j.io.SAXReader;
 
 public class WxUtil extends StringUtil
 {
   private static final long serialVersionUID = 1L;
   private static Logger log = Logger.getLogger(WxUtil.class);
 
   public static Map<String, String> parseXml(HttpServletRequest request)
   {
     try {
       Map map = new HashMap();
 
       InputStream inputStream = request.getInputStream();
 
       SAXReader reader = new SAXReader();
       Document document = reader.read(inputStream);
 
       Element root = document.getRootElement();
 
       List<Element> elementList = root.elements();
 
       for (Element e : elementList) {
         map.put(e.getName(), e.getText());
       }
 
       inputStream.close();
       inputStream = null;
       return map; } catch (Exception e) {
     }
     return null;
   }
 
   public static Map<String, Object> oppen_id(HttpServletRequest request, HttpSession session)
   {
     String oppen_id = "";
     String code = "";
     String access_token = "";
     if (session.getAttribute("oppen_id") == null)
     {
       code = request.getParameter("code");
       System.out.println("------------------------------------");
       System.out.println("code=" + code);
       System.out.println("------------------------------------");
       if (code != null)
       {
         String token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=wxc16c6df79a731a65&secret=c9ca763ce3825bdc4fedd9fecc8628ae&code=" + 
           code + 
           "&grant_type=authorization_code";
 
         JSONObject json = new JSONObject();
 
         json = CommonUtil.httpsRequest(token_url, "GET", null);
         if (json != null) {
           oppen_id = json.getString("openid");
           access_token = json.getString("access_token");
           log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
           log.info(json);
         }
       }
     }
     else {
       oppen_id = (String)session.getAttribute("oppen_id");
     }
     Map map = new HashMap();
     map.put("code", code);
     map.put("oppen_id", oppen_id);
     map.put("access_token", access_token);
 
     return map;
   }
 
   public static Map<String, Object> oppenIdInfo(HttpServletRequest request, HttpSession session)
   {
     try {
       Map map = new HashMap();
       if (session.getAttribute("oppen_id") == null)
       {
         Map map2 = oppen_id(request, session);
 
         String oppen_id = (String)map2.get("oppen_id");
         String access_token = (String)map2.get("access_token");
         AdvancedUtil advancedUtil = new AdvancedUtil();
         WeixinUserInfo wxi = new WeixinUserInfo();
 
         log.info("--------------------");
         log.info("oppen_id====" + oppen_id + "......accessToken1====" + access_token);
         wxi = AdvancedUtil.getUserInfo(access_token, oppen_id);
 
         String realname = wxi.getNickname();
         String head_img_url = wxi.getHeadImgUrl();
         log.info("realname==" + realname + "....head_img_url=" + head_img_url);
         session.setAttribute("realname", realname);
         session.setAttribute("head_img", head_img_url);
         session.setAttribute("oppen_id", oppen_id);
       }
       return map;
     } catch (Exception e) {
       e.getStackTrace();
     }return null;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.util.WxUtil
 * JD-Core Version:    0.6.2
 */