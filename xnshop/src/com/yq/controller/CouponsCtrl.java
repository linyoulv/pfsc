 package com.yq.controller;
 
 import com.yq.entity.Coupons;
 import com.yq.service.CouponsService;
 import com.yq.util.PageUtil;
 import com.yq.util.StringUtil;
 import java.io.PrintStream;
 import java.text.SimpleDateFormat;
 import java.util.Date;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpSession;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.RequestParam;
 import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping
 public class CouponsCtrl extends StringUtil
 {
 
   @Autowired
   private CouponsService couponsService;
   private Coupons coupons = new Coupons();
   Map<String, Object> map = new HashMap();
   SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
 
   @RequestMapping({"/main/cpsAddjsp.html"})
   public ModelAndView addjsp() { ModelAndView ml = new ModelAndView();
     ml.setViewName("main/coupons/add");
     return ml; }
 
   @ResponseBody
   @RequestMapping({"/main/cpsInsert.html"})
   public String insert(String cps_name, String cps_code, Float cps_price, String cps_time, Integer cps_level, String oppen_id)
   {
     String ranStr = String.valueOf((int)(Math.random() * 90000.0D) + 1000);
     this.map.put("cps_name", cps_name);
     this.map.put("cps_code", ranStr);
     this.map.put("cps_price", cps_price);
     this.map.put("cps_time", cps_time);
     this.map.put("cps_level", Integer.valueOf(0));
     this.map.put("oppen_id", Integer.valueOf(0));
     this.map.put("status", Integer.valueOf(1));
     String rs = String.valueOf(this.couponsService.insert(this.map));
     System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>" + rs);
     return rs;
   }
 
   @ResponseBody
   @RequestMapping({"/page/cpsInsert.html"})
   public String pageInsert(String cps_name, Integer cps_id, Float cps_price, Integer cps_level, String oppen_id, HttpSession session)
   {
     String add_time = this.sf.format(new Date());
     oppen_id = getOppen_id(session);
 
     this.coupons.setCps_id(cps_id);
     System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>cps_id=" + cps_id);
     this.coupons.setCps_time(add_time);
     this.coupons.setCps_level(Integer.valueOf(0));
     this.coupons.setOppen_id("0");
 
     List cps = this.couponsService.listByCode(this.coupons);
 
     if (cps.size() > 0) {
       this.coupons.setCps_level(cps_id);
       this.coupons.setOppen_id(oppen_id);
       List cpsUser = this.couponsService.listByCode(this.coupons);
       System.err.println(cpsUser.size());
       if (cpsUser.size() > 0) {
         System.err.println("cpsUser");
         return "-1";
       }
       System.err.println(1);
       this.map.put("cps_name", ((Coupons)cps.get(0)).getCps_name());
       this.map.put("cps_code", ((Coupons)cps.get(0)).getCps_code());
       this.map.put("cps_price", ((Coupons)cps.get(0)).getCps_price());
       this.map.put("cps_time", ((Coupons)cps.get(0)).getCps_time());
       this.map.put("cps_level", ((Coupons)cps.get(0)).getCps_id());
       this.map.put("oppen_id", oppen_id);
       this.map.put("status", Integer.valueOf(1));
       return String.valueOf(this.couponsService.insert(this.map));
     }
 
     return "-5";
   }
 
   @ResponseBody
   @RequestMapping({"/main/cpsUpdate.html"})
   public String update(String cps_name, String cps_code, Float cps_price, String cps_time, Integer cps_level, Integer cps_id)
   {
     this.map.put("cps_name", cps_name);
 
     this.map.put("cps_price", cps_price);
     this.map.put("cps_time", cps_time);
     this.map.put("cps_id", cps_id);
     return String.valueOf(this.couponsService.update(this.map));
   }
   @ResponseBody
   @RequestMapping({"/main/cpsDelete.html"})
   public String delete(Integer cps_id) { this.map.put("cps_id", cps_id);
     return String.valueOf(this.couponsService.delete(this.map));
   }
 
   @RequestMapping({"/main/cpsList.html"})
   public ModelAndView list(@RequestParam(defaultValue="1") Integer currentPage, HttpServletRequest request)
   {
     String add_time = this.sf.format(new Date());
     this.coupons.setCps_time(add_time);
     this.coupons.setOppen_id("");
     this.coupons.setCps_level(Integer.valueOf(0));
 
     int total = this.couponsService.count(this.coupons);
     PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
     this.coupons.setPageSize(this.pagesize_1.intValue());
     this.coupons.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
 
     List list = this.couponsService.list(this.coupons);
     ModelAndView ml = new ModelAndView();
     ml.addObject("cps", list);
     ml.setViewName("main/coupons/list");
     return ml;
   }
 
   @RequestMapping({"/page/cpsList.html"})
   public ModelAndView listByOppen_id(String oppen_id, HttpServletRequest request, HttpSession session)
   {
     String add_time = this.sf.format(new Date());
     oppen_id = getOppen_id(session);
     this.coupons.setOppen_id(oppen_id);
     this.coupons.setCps_level(Integer.valueOf(-1));
     this.coupons.setCps_time(add_time);
     List list = this.couponsService.list(this.coupons);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("page/coupons-list");
     return ml;
   }
 
   @RequestMapping({"/page/cpsAll.html"})
   public ModelAndView listAll(String oppen_id) {
     String add_time = this.sf.format(new Date());
     this.coupons.setCps_time(add_time);
     this.coupons.setCps_level(Integer.valueOf(0));
 
     List list = this.couponsService.listAll(this.coupons);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("page/cpsAll-list");
     return ml;
   }
 
   @RequestMapping({"/page/cartCoupons.html"})
   public ModelAndView cartCoupons(String oppen_id, Integer addr_id, @RequestParam(defaultValue="1") Integer currentPage, HttpServletRequest request, HttpSession session)
   {
     String add_time = this.sf.format(new Date());
 
     this.coupons.setCps_time(add_time);
     oppen_id = getOppen_id(session);
     this.coupons.setOppen_id(oppen_id);
     this.coupons.setCps_level(Integer.valueOf(-1));
     List list = this.couponsService.list(this.coupons);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("addr_id", addr_id);
     ml.setViewName("page/cart-coupons");
     return ml;
   }
 
   @RequestMapping({"/page/goodsCoupons.html"})
   public ModelAndView goodsCoupons(Integer goods_id, Integer goods_num, String oppen_id, Integer addr_id, @RequestParam(defaultValue="1") Integer currentPage, HttpServletRequest request, HttpSession session)
   {
     String add_time = this.sf.format(new Date());
     oppen_id = getOppen_id(session);
     this.coupons.setOppen_id(oppen_id);
     this.coupons.setCps_time(add_time);
     List list = this.couponsService.list(this.coupons);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("addr_id", addr_id);
     ml.addObject("goods_id", goods_id);
     ml.addObject("goods_num", goods_num);
     ml.setViewName("page/goods-coupons");
     return ml;
   }
 
   @RequestMapping({"/main/cpsListById.html"})
   public ModelAndView listById(Integer cps_id) {
     this.coupons.setCps_id(cps_id);
     List list = this.couponsService.listById(this.coupons);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/coupons/info");
     return ml;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.controller.CouponsCtrl
 * JD-Core Version:    0.6.2
 */