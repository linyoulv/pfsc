package com.yq.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping({"/"})

public class LoginCtr {
	
	  @RequestMapping({"/page/login.html"})
	   public ModelAndView login(HttpSession session) {
	     ModelAndView mav = new ModelAndView();
	     mav.setViewName("page/login");
	     return mav;
	   }
	  
	  

	

}
