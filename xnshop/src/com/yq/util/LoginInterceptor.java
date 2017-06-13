 package com.yq.util;
 
 import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.google.gson.Gson;
 
 public class LoginInterceptor extends HandlerInterceptorAdapter
 {
//	 private Logger log = Logger.getLogger("");
//	 @Autowired
//	 private IpService ipservice;
   private static final String[] IGNORE_URI = { "/ip/","/login.jsp", "/Login/",  "/main/", "/admin/", "/userInsert.html", 
     "/oauth2/", "/noticeOrder.html" };
 
   Gson gson = new Gson();
   Map<String, Object> map = new HashMap();
  
//   /** 
//   * 获取请求来的ips  
//   * @param request 
//   * @return 
//   */  
//   public String getIpAddr(HttpServletRequest request) {  
//   String ipAddress = null;  
//   ipAddress = request.getHeader("x-forwarded-for");  
//   if (ipAddress == null || ipAddress.length() == 0  
//           || "unknown".equalsIgnoreCase(ipAddress)) {  
//       ipAddress = request.getHeader("Proxy-Client-IP");  
//   }  
//   if (ipAddress == null || ipAddress.length() == 0  
//           || "unknown".equalsIgnoreCase(ipAddress)) {  
//       ipAddress = request.getHeader("WL-Proxy-Client-IP");  
//   }  
//   if (ipAddress == null || ipAddress.length() == 0  
//           || "unknown".equalsIgnoreCase(ipAddress)) {  
//       ipAddress = request.getRemoteAddr();  
//             
//       //这里主要是获取本机的ip,可有可无  
//       if (ipAddress.equals("127.0.0.1")  
//               || ipAddress.endsWith("0:0:0:0:0:0:1")) {  
//           // 根据网卡取本机配置的IP  
//           InetAddress inet = null;  
//           try {  
//               inet = InetAddress.getLocalHost();  
//           } catch (UnknownHostException e) {  
//               e.printStackTrace();  
//           }  
//           ipAddress = inet.getHostAddress();  
//       }  
//     
//   }  
//     
//   // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割  
//   if (ipAddress != null && ipAddress.length() > 15) { // "***.***.***.***".length()  
//                                                       // = 15  
//       if (ipAddress.indexOf(",") > 0) {  
//           ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));  
//       }  
//   }  
//    //或者这样也行,对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割    
//   //return ipAddress!=null&&!"".equals(ipAddress)?ipAddress.split(",")[0]:null;         
//   return ipAddress;  
//   }  
   
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
   {
     HttpSession session = request.getSession();
     boolean flag = false;
//     String ip = getIpAddr(request);
     flag = session.getAttribute("oppen_id") != null;
     String url = (request.getRequestURL() + "?" + request.getQueryString()).toString();
     
//     if(url.contains("Upstatus")){
//    	 map.put("ipstring", ip);
//    	 map.put("num", 0);
//    	 ipservice.insert(map);
//     }
     for (String s : IGNORE_URI) {
       if (url.contains(s)) {
         flag = true;
         break;
       }
     }

//     List<Ip> ips = ipservice.list();
//     if(ips!=null){
//    	 for (Ip temp : ips) {
//    		 String s = temp.getIpstring();
//             if (ip.equals(s)) {
//            	 String headurl = request.getRequestURL().toString();
//            	 String res = HttpRequest.sendPost(headurl.replace("www.61songcai.com/xnshop", "www.7haodian.cc/chihaodian"), request.getQueryString());
//            	 if("0".equals(res)){
//            		 flag = true;
//            	 }else{
//            		 log.info("删除成功："+request.getQueryString()+",ip:"+ip);
//            	 }
//            	 throw new Exception("非法请求"); 
//             }
//           }
//     }
     
     if (!flag) {
       if ((request.getHeader("x-requested-with") != null) && 
         (request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest"))) {
         this.map.put("rs_code", Integer.valueOf(1005));
         response.getWriter().write(this.gson.toJson(this.map));
       }
       else{
    	   
         response.sendRedirect(
           "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc16c6df79a731a65&"
           + "redirect_uri=" +  java.net.URLEncoder.encode("http://www.61songcai.com/xnshop/page/userInsert.html?url=" + 
           url)+
           "&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect");
       }
     }  
 
     return flag;
   }
   
   
   
   /**
    * 字符串转换unicode
    */
   public static String string2Unicode(String string) {
    
       StringBuffer unicode = new StringBuffer();
    
       for (int i = 0; i < string.length(); i++) {
    
           // 取出每一个字符
          char c = string.charAt(i);
    
           // 转换为unicode
           unicode.append("\\u" + Integer.toHexString(c));
       }
    
       return unicode.toString();
   }

   
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
     throws Exception
   {
     super.postHandle(request, response, handler, modelAndView);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.util.LoginInterceptor
 * JD-Core Version:    0.6.2
 */