 package com.yq.controller;
 
 import com.yq.entity.Freight;
 import com.yq.service.FreightService;
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
 public class FeightCtrl
 {
 
   @Autowired
   private FreightService freightService;
   private Freight freight = new Freight();
   Map<String, Object> map = new HashMap();
 
   @RequestMapping({"/main/fgtAddjsp.html"})
   public ModelAndView addjsp()
   {
     return new ModelAndView("main/freight/add");
   }
   @ResponseBody
   @RequestMapping({"/main/fgtInsert.html"})
   public String insert(Float fgt_price, Float free_price) {
     this.map.put("fgt_price", fgt_price);
     this.map.put("free_price", free_price);
     return String.valueOf(this.freightService.insert(this.map));
   }
   @ResponseBody
   @RequestMapping({"/main/fgtUpdate.html"})
   public String update(Float fgt_price, Float free_price, Integer fgt_id) { this.map.put("fgt_price", fgt_price);
     this.map.put("free_price", free_price);
     this.map.put("fgt_id", fgt_id);
     return String.valueOf(this.freightService.update(this.map));
   }
 
   @RequestMapping({"/main/fgtList.html"})
   public ModelAndView list()
   {
     List list = this.freightService.list(this.freight);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/freight/list");
     return ml;
   }
   @RequestMapping({"/main/fgtListById.html"})
   public ModelAndView listById() {
     List list = this.freightService.list(this.freight);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/freight/info");
     return ml;
   }
 }

 