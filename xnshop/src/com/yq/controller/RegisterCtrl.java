package com.yq.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.service.MerchantService;
import com.yq.util.StringUtil;

@Controller
@RequestMapping({"/"})

public class RegisterCtrl  extends StringUtil{
	
	   MerchantService merchantService;

	   Map<String, Object> map = new HashMap();
	
	
	  @RequestMapping({"/page/register.html"})
	   public ModelAndView login(HttpSession session) {
	     ModelAndView mav = new ModelAndView();
	     mav.setViewName("page/register");
	     return mav;
	   }
	  
	  


}
