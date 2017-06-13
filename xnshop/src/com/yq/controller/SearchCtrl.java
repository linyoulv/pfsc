 package com.yq.controller;
 
 import com.yq.entity.Search;
 import com.yq.service.SearchService;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.RequestParam;
 import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping({"/"})
 public class SearchCtrl
 {
 
   @Autowired
   private SearchService searchService;
   private Search search = new Search();
   Map<String, Object> map = new HashMap();
 
   @RequestMapping({"main/secAddjsp.html"})
   public ModelAndView addjsp()
   {
     return new ModelAndView("main/search/add");
   }
   @ResponseBody
   @RequestMapping({"main/secInsert.html"})
   public String insert(String sec_name, Integer sort, Integer status) {
     this.map.put("sec_name", sec_name);
     this.map.put("status", Integer.valueOf(1));
     this.map.put("sort", Integer.valueOf(0));
     return String.valueOf(this.searchService.insert(this.map));
   }
   @ResponseBody
   @RequestMapping({"main/secUpdate.html"})
   public String update(Integer sec_id, String sec_name) {
     this.map.put("sec_name", sec_name);
     this.map.put("sec_id", sec_id);
     return String.valueOf(this.searchService.update(this.map));
   }
 
   @ResponseBody
   @RequestMapping({"main/secUpstatus.html"})
   public String upstatus(Integer sec_id, Integer status) {
     this.map.put("status", status);
     this.map.put("sec_id", sec_id);
     return String.valueOf(this.searchService.upstatus(this.map));
   }
   @ResponseBody
   @RequestMapping({"main/secSort.html"})
   public String sort(Integer sec_id, Integer sort) {
     this.map.put("sort", sort);
     this.map.put("sec_id", sec_id);
     return String.valueOf(this.searchService.sort(this.map));
   }
 
   @RequestMapping({"main/secList.html"})
   public ModelAndView list(@RequestParam(defaultValue="1") Integer status) {
     this.search.setStatus(status);
     List list = this.searchService.list(this.search);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/search/list");
     return ml;
   }
   @RequestMapping({"main/secListById.html"})
   public ModelAndView listById(Integer sec_id) {
     this.search.setSec_id(sec_id);
     List list = this.searchService.listById(this.search);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/search/info");
     return ml;
   }
   @RequestMapping({"page/secList.html"})
   public ModelAndView searchlist(@RequestParam(defaultValue="1") Integer status) {
     this.search.setStatus(status);
     List list = this.searchService.list(this.search);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("page/search");
     return ml;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.controller.SearchCtrl
 * JD-Core Version:    0.6.2
 */