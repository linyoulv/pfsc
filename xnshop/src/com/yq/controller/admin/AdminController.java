 package com.yq.controller.admin;
 
 import com.yq.service.AdminService;
 import com.yq.util.MD5Util;
 import java.util.HashMap;
 import java.util.Map;
 import javax.servlet.http.HttpSession;
 import org.apache.log4j.Logger;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.ResponseBody;
 
 @Controller
 @RequestMapping({"/admin/"})
 public class AdminController
 {
   private Logger log = Logger.getLogger("");
 
   @Autowired
   private AdminService adminService;
   Map<String, Object> map = new HashMap();
 
   @ResponseBody
   @RequestMapping({"isExist.html"})
   public String isExist(String username, String password, HttpSession session) { 
	 this.map.put("username", username);
     this.map.put("password", MD5Util.MD5Encode(password, ""));
     session.setAttribute("username", username);
     session.setAttribute("password", password);
     return this.adminService.isExist(this.map); }
 
   @ResponseBody
   @RequestMapping({"update.html"})
   public String update(String password, String password2, HttpSession session) {
     this.map.put("admin_id", Integer.valueOf(1));
     String pwd = this.adminService.listById(this.map);
     String rs = "0";
     if (MD5Util.MD5Encode(password, "").equals(pwd))
     {
       this.map.put("password", MD5Util.MD5Encode(password2, ""));
       rs = this.adminService.update(this.map);
     }
 
     return rs;
   }
 }
 