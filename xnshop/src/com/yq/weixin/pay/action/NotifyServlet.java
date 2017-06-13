 package com.yq.weixin.pay.action;
 
 import java.io.BufferedReader;
 import java.io.IOException;
 import java.io.InputStreamReader;
 import java.io.PrintStream;
 import javax.servlet.http.HttpServletRequest;
 
 public class NotifyServlet
 {
   private static final long serialVersionUID = 1L;
 
   public static String getWxXml(HttpServletRequest request)
   {
     try
     {
       BufferedReader br = new BufferedReader(new InputStreamReader(
         request
         .getInputStream()));
 
       String line = null;
       StringBuilder sb = new StringBuilder();
       while ((line = br.readLine()) != null) {
         sb.append(line);
       }
       System.out.println(sb.toString());
       return sb.toString();
     }
     catch (IOException e)
     {
       e.printStackTrace();
       return e.getMessage();
     }
   }
 }

/* Location:           
 * Qualified Name:     com.yq.weixin.pay.action.NotifyServlet
 * JD-Core Version:    0.6.2
 */