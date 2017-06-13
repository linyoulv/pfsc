 package com.yq.controller;
 
 import com.yq.entity.Banner;
 import com.yq.service.BannerService;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping({"/"})
 public class BannerCtrl
 {
 
   @Autowired
   private BannerService bannerService;
   private Banner banner = new Banner();
   Map<String, Object> map = new HashMap();
 
   @RequestMapping({"/main/banAddjsp.html"})
   public ModelAndView addjsp()
   {
     return new ModelAndView("main/banner/add");
   }
 
   @ResponseBody
   @RequestMapping({"/main/banInsert.html"})
   public String insert(String ban_img, String url, Integer status, Integer sort, Integer type,Integer usertype) {
     this.map.put("url", url);
     this.map.put("type", type);
     this.map.put("user_type", usertype);
     this.map.put("ban_img", ban_img);
     this.map.put("status", Integer.valueOf(1));
     this.map.put("sort", Integer.valueOf(0));
     return String.valueOf(bannerService.insert(map));
   }
   @ResponseBody
   @RequestMapping({"/main/banUpdate.html"})
   public String update(Integer ban_id, String ban_img, String url) { 
	 this.map.put("url", url);
     this.map.put("ban_img", ban_img);
     this.map.put("ban_id", ban_id);
     return String.valueOf(this.bannerService.update(this.map)); }
 
   @ResponseBody
   @RequestMapping({"/main/banUpstatus.html"})
   public String upstatus(Integer ban_id, Integer status,String delmark) {
     this.map.put("status", status);
     this.map.put("ban_id", ban_id);
     if("mark".equals(delmark)){
    	 return String.valueOf(this.bannerService.upstatus(this.map));
     }else{
    	 return "1";
     }
   }
   @ResponseBody
   @RequestMapping({"/main/banSort.html"})
   public String sort(Integer ban_id, Integer sort) {
     this.map.put("sort", sort);
     this.map.put("ban_id", ban_id);
     return String.valueOf(this.bannerService.sort(this.map));
   }
 
   @RequestMapping({"/main/banList.html"})
   public ModelAndView list(Integer status) {
     this.banner.setStatus(status);
     List list = this.bannerService.list(this.banner);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/banner/list");
     return ml;
   }
   @RequestMapping({"/main/banListById.html"})
   public ModelAndView listById(Integer ban_id) {
     this.banner.setBan_id(ban_id);
     List list = this.bannerService.listById(this.banner);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/banner/info");
     return ml;
   }
 }

