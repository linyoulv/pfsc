package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.service.MessageService;
import com.yq.service.UserService;


@Controller
//@RequestMapping({"/"})
public class MessageCtrl {
	 
			 
	 @Autowired
	 private MessageService  messageService;
	 Map<String, Object> map = new HashMap();
	 
	   @ResponseBody
	   @RequestMapping({"/page/messageInsert.html"})
	   public String insert(String content,int goodId,HttpSession session)
	   {
		    
		 String username = (String) session.getAttribute("realname");
		 if (username != null && !"".equals(username.trim())) {
			 
		 }else{
			 
			 username="61送菜";
		 } 

		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String add_time =  sdf.format(new Date()); 
		 
		 this.map.put("add_time",add_time);  
	     this.map.put("content",content);
	     this.map.put("goodId",goodId);
	     this.map.put("username",username);
	    
	     return String.valueOf(messageService.insert(map));
	   }
	 
	
}
