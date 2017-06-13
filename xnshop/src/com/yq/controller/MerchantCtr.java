package com.yq.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Goods;
import com.yq.entity.Merchant;
import com.yq.service.AdminService;
import com.yq.service.GoodsService;
import com.yq.service.MerchantService;
import com.yq.util.MD5Util;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;


@Controller
@RequestMapping({"/"})
public class MerchantCtr extends StringUtil{
	 

	   @Autowired
	   private MerchantService merchantService;
	   private Merchant   merchant = new Merchant();
	   Map<String, Object> map = new HashMap();
	
	   @ResponseBody
	   @RequestMapping({"/page/merchantInsert.html"})
	   public String insert(String password,String repassword,String address,String username,String phone)
	   {
	     
	     this.map.put("m_password",password);
	     this.map.put("m_repassword",repassword);
	     this.map.put("m_address", address);
	     this.map.put("m_username", username); 
	     this.map.put("m_shbz", 0);
	     this.map.put("m_phone",phone);

	 
	     return String.valueOf(this.merchantService.insert(this.map));
	   }
	   
	   private Logger log = Logger.getLogger("");
 
	 
	   @ResponseBody
	   @RequestMapping({"/page/isExist.html"})
	   public String isExist(String username, String password, HttpSession session) { 
		 this.map.put("m_username", username);
	    // this.map.put("password", MD5Util.MD5Encode(password, ""));
		 map.put("m_password", password);
	     session.setAttribute("m_username", username);
	     session.setAttribute("m_password", password);
	     return this.merchantService.isExist(this.map);
	     
	   
	   }

	    
	   @RequestMapping({"/main/merchantList.html"})
	   public ModelAndView list(@RequestParam(defaultValue="") String m_username,@RequestParam(defaultValue="1") Integer currentPage,HttpServletRequest request)
	     throws UnsupportedEncodingException
	   {
 
 
		 m_username = URLDecoder.decode(m_username, "utf-8");
		 this.merchant.setM_username(m_username);
 	     int total = this.merchantService.count(this.merchant);
	     PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
	     this.merchant.setPageSize(this.pagesize_1.intValue());
	     this.merchant.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
	     List list = this.merchantService.list(this.merchant);
	     
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("goods", list);
 
	     ml.setViewName("main/merchant/list");
	     return ml;
	   } 
	   

	   
	   @ResponseBody
	   @RequestMapping({"/main/merchantDelete.html"})
	   public String delete(Integer m_id) {
	 
		     this.map.put("m_id", m_id);
		     return String.valueOf(this.merchantService.delete(this.map));
	   }
	   
	   @ResponseBody
	   @RequestMapping({"/main/merchantUpdate.html"})
	   public String update(Integer m_id) {
	 
		     this.map.put("m_id", m_id);
		     return String.valueOf(this.merchantService.update(this.map));
	   }


}
