 package com.yq.weixin.pay.action;
 
 import com.yq.weixin.pay.util.Sha1Util;
 import java.io.IOException;
 import java.net.URLEncoder;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 
 public class MainServlet extends HttpServlet
 {
   public void doGet(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     String appid = "";
     String backUri = "http://***/topayServlet";
 
     String orderNo = appid + Sha1Util.getTimeStamp();
     backUri = backUri + "?userId=b88001&orderNo=" + orderNo + "&describe=test&money=1780.00";
 
     backUri = URLEncoder.encode(backUri);
 
     String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + 
       appid + 
       "&redirect_uri=" + 
       backUri + 
       "&response_type=code&scope=snsapi_userinfo&state=123#wechat_redirect";
     response.sendRedirect(url);
   }
 
   public void doPost(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     doGet(request, response);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.pay.action.MainServlet
 * JD-Core Version:    0.6.2
 */