 package com.yq.weixin.servlet;
 
 import com.yq.weixin.pojo.Token;
 import com.yq.weixin.util.CommonUtil;
 import com.yq.weixin.util.StringUtil;
 import java.io.PrintStream;
 import java.util.HashMap;
 import java.util.Map;
 import net.sf.json.JSONObject;
 
 public class WechatPushMassage extends StringUtil
 {
   CommonUtil commonUtil = new CommonUtil();
 
   public void pushMessage(Map<String, Object> map)
   {
     String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN";
     Token token = headtoken("wxc16c6df79a731a65", "c9ca763ce3825bdc4fedd9fecc8628ae");
     url = url.replace("ACCESS_TOKEN", token.getAccessToken());
 
     JSONObject json = new JSONObject();
     json.put("touser", map.get("oppen_id"));
     json.put("template_id", "C6YRjqsvDLYFuVQbVHfAWKWPbXD8Ca_lSwiXG8cQQNY");
 
     JSONObject dd = new JSONObject();
 
     JSONObject dd2 = new JSONObject();
     dd2.put("value", map.get("result"));
     dd2.put("color", "#173177");
     dd.put("first", dd2);
 
     JSONObject cc2 = new JSONObject();
     cc2.put("value", map.get("body"));
     cc2.put("color", "#173177");
     dd.put("orderProductName", cc2);
 
     JSONObject ee2 = new JSONObject();
     ee2.put("value", map.get("price"));
     ee2.put("color", "#173177");
     dd.put("orderMoneySum", ee2);
 
     JSONObject gg2 = new JSONObject();
     gg2.put("value", "欢迎再次购买！");
 
     dd.put("Remark", gg2);
 
     json.put("data", dd);
     System.out.println(json.toString());
     JSONObject js = CommonUtil.httpsRequest(url, "POST", json.toString());
     System.out.println("js==" + js);
   }
 
   public void sendOrder(Map<String, Object> map)
   {
     String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN";
     Token token = headtoken("wxc16c6df79a731a65", "c9ca763ce3825bdc4fedd9fecc8628ae");
     url = url.replace("ACCESS_TOKEN", token.getAccessToken());
 
     JSONObject json = new JSONObject();
     json.put("touser", map.get("oppen_id"));
     json.put("template_id", "tjqPjlrB1vbXatR7_HhEefzjG1UNbacVTotD85J_ZR8\t");
 
     JSONObject dd = new JSONObject();
 
     JSONObject dd2 = new JSONObject();
     dd2.put("value", map.get("result"));
     dd2.put("color", "#173177");
     dd.put("first", dd2);
 
     JSONObject cc2 = new JSONObject();
     cc2.put("value", map.get("body"));
     cc2.put("color", "#173177");
     dd.put("delivername", cc2);
 
     JSONObject ee2 = new JSONObject();
     ee2.put("value", map.get("price"));
     ee2.put("color", "#173177");
     dd.put("orderMoneySum", ee2);
 
     JSONObject gg2 = new JSONObject();
     gg2.put("value", "欢迎再次购买！");
 
     dd.put("Remark", gg2);
 
     json.put("data", dd);
     System.out.println(json.toString());
     JSONObject js = CommonUtil.httpsRequest(url, "POST", json.toString());
     System.out.println("js==" + js);
   }
 
   public Token headtoken(String appId, String appSrecet)
   {
     Token token = new Token();
     token = this.commonUtil.getToken(appId, appSrecet);
     System.out.println(token);
     return token;
   }
   public static void main(String[] args) {
     Map map = new HashMap();
     map.put("result", "订单支付成功");
     map.put("body", "body");
     map.put("price", "0.01");
     map.put("oppen_id", "oyqTtw9S7JFtTgx6-3qpSG66w7QU");
     WechatPushMassage w = new WechatPushMassage();
     w.pushMessage(map);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.servlet.WechatPushMassage
 * JD-Core Version:    0.6.2
 */