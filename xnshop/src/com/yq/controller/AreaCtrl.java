 package com.yq.controller;
 
 import com.google.gson.Gson;
 import com.yq.entity.Area;
 import com.yq.service.AreaService;
 import java.io.PrintStream;
 import java.io.PrintWriter;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.servlet.http.HttpServletResponse;
 import net.sf.json.JSONArray;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping({"/"})
 public class AreaCtrl
 {
 
   @Autowired
   private AreaService areaService;
   private static Gson gson = new Gson();
   private Area area = new Area();
   Map<String, Object> map = new HashMap();
 
   @RequestMapping({"main/areaAddjsp.html"})
   public ModelAndView addjsp()
   {
     return new ModelAndView("main/area/add");
   }
 
   @RequestMapping({"main/addrAddjsp.html"})
   public ModelAndView addrAddjsp(Integer area_id) {
     ModelAndView ml = new ModelAndView();
     ml.addObject("area_id", area_id);
     ml.setViewName("main/area/addr-add");
     return ml;
   }
   @ResponseBody
   @RequestMapping({"main/areaInsert.html"})
   public String insert(String area_name, Integer level, Integer status, Integer sort) {
     this.map.put("area_name", area_name);
     this.map.put("level", level);
     this.map.put("status", Integer.valueOf(1));
     this.map.put("sort", Integer.valueOf(0));
     return gson.toJson(Integer.valueOf(this.areaService.insert(this.map)));
   }
   @ResponseBody
   @RequestMapping({"main/areaUpdate.html"})
   public String update(Integer area_id, String area_name) { this.map.put("area_name", area_name);
     this.map.put("area_id", area_id);
     return String.valueOf(this.areaService.update(this.map)); }
 
   @ResponseBody
   @RequestMapping({"main/areaUpstatus.html"})
   public String upstatus(Integer area_id, Integer status) {
     this.map.put("status", status);
     this.map.put("area_id", area_id);
     return String.valueOf(this.areaService.upstatus(this.map));
   }
 
   @ResponseBody
   @RequestMapping({"main/areaSort.html"})
   public String sort(Integer area_id, Integer sort) {
     this.map.put("sort", sort);
     this.map.put("area_id", area_id);
     return String.valueOf(this.areaService.sort(this.map));
   }
 
   @RequestMapping({"main/areaList.html"})
   public ModelAndView list(Integer status, Integer level)
   {
     this.area.setStatus(status);
     this.area.setLevel(level);
     List list = this.areaService.list(this.area);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("level", level);
     if (level.intValue() == 0) {
       ml.setViewName("main/area/area-list");
     }
     else {
       ml.setViewName("main/area/addr-list");
     }
     return ml;
   }
 
   @RequestMapping({"page/areaList.html"})
   public ModelAndView areaList(Integer status, Integer level) {
     ModelAndView ml = new ModelAndView();
     this.area.setLevel(Integer.valueOf(0));
     this.area.setStatus(Integer.valueOf(1));
     List areaList = this.areaService.list(this.area);
     for (int i = 0; i < areaList.size(); i++) {
       this.area.setLevel(((Area)areaList.get(i)).getArea_id());
       List addr = this.areaService.list(this.area);
       this.map.put("addr" + i, addr);
     }
     this.map.put("areaList", areaList);
     ml.addObject("map", this.map);
     ml.setViewName("page/area");
     return ml;
   }
 
   @RequestMapping({"main/areaListById.html"})
   public ModelAndView listById(Integer area_id)
   {
     this.area.setArea_id(area_id);
     List list = this.areaService.listById(this.area);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/area/area-info");
     return ml;
   }
   @ResponseBody
   @RequestMapping({"page/areaJson.html"})
   public void areaJson(Integer level, HttpServletResponse response) {
     try { this.area.setLevel(level);
       this.area.setStatus(Integer.valueOf(1));
       List addr = this.areaService.list(this.area);
       JSONArray jsonStrs = JSONArray.fromObject(addr);
 
       response.setContentType("text/html;charset=UTF-8");
       response.setCharacterEncoding("UTF-8");
       System.out.println(jsonStrs);
 
       response.getWriter().write(jsonStrs.toString());
     } catch (Exception e)
     {
       e.printStackTrace();
     }
   }
 }

/* Location:           
 * Qualified Name:     com.yq.controller.AreaCtrl
 * JD-Core Version:    0.6.2
 */