 package com.yq.controller;
 
 import java.io.File;
import java.io.PrintStream;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yq.util.OSUtil;

import java.util.Properties; 
 
 @Controller
 @RequestMapping("/main")
 public class FileCtrl
 {
   @ResponseBody
   @RequestMapping("/upload.html")
   public String upload(@RequestParam("file") MultipartFile file, HttpServletRequest request)
   {
     
    
	 
     String fileName = new Date().getTime() + ".png";
     String url ="";
     String filePath = "";  
     String localhost =  "http://"  +  request.getServerName()  +  ":"  +  request.getServerPort();
     try
     {
       if(file!=null){ 
    	   filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"  
                   + fileName;  
    	   
    	   //==林勇======  用正常斜杠替代反斜杠 
    	   filePath=  filePath.replaceAll("\\\\", "/");
   		 
   	       System.out.println("filePath:"+filePath);
  	       file.transferTo(new File(filePath)); 
    	   url = localhost+request.getContextPath() + "/upload/" + fileName;
    	   
    	   
    	   url =  url.replaceAll("\\\\", "/");
    	   
    	   
       }
      
     } catch (Exception e) {
       e.printStackTrace();
     }
    
 
     return url;
   }
 }
