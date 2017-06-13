 package com.yq.weixin.servlet;
 
 import com.yq.weixin.pojo.SNSUserInfo;
 import com.yq.weixin.pojo.WeixinOauth2Token;
 import com.yq.weixin.util.AdvancedUtil;
 import java.io.IOException;
 import javax.servlet.RequestDispatcher;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 
 public class OAuthServlet extends HttpServlet
 {
   private static final long serialVersionUID = -1847238807216447030L;
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     request.setCharacterEncoding("gb2312");
     response.setCharacterEncoding("gb2312");
 
     String code = request.getParameter("code");
 
     if (!"authdeny".equals(code))
     {
       WeixinOauth2Token weixinOauth2Token = AdvancedUtil.getOauth2AccessToken("APPID", "APPSECRET", code);
 
       String accessToken = weixinOauth2Token.getAccessToken();
 
       String openId = weixinOauth2Token.getOpenId();
 
       SNSUserInfo snsUserInfo = AdvancedUtil.getSNSUserInfo(accessToken, openId);
 
       request.setAttribute("snsUserInfo", snsUserInfo);
     }
 
     request.getRequestDispatcher("index.jsp").forward(request, response);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.servlet.OAuthServlet
 * JD-Core Version:    0.6.2
 */