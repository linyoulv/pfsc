 package com.yq.controller;
 
 import com.yq.entity.Category;
import com.yq.entity.Errands;
import com.yq.entity.Goods;
import com.yq.entity.Guarantee;
import com.yq.service.CategoryService;
import com.yq.service.ErrandsService;
import com.yq.service.GoodsService;
import com.yq.service.GuaranteeService;

import java.util.ArrayList;
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
 public class CategoryCtrl
 {
 
   @Autowired
   private CategoryService categoryService;
   private Category category = new Category();
 
   @Autowired
   private GoodsService goodsService;
   private Goods goods = new Goods();
   
   @Autowired
   private ErrandsService errandsService;
   private Errands errands = new Errands();
   
   
   @Autowired
   private GuaranteeService guaranteeService;
   private Guarantee guarantee = new Guarantee();
   
   
 
   Map<String, Object> map = new HashMap();
 
   @RequestMapping({"/main/ctgAddjsp.html"})
   public ModelAndView addjsp()
   {
     return new ModelAndView("main/category/add");
   }
 
   @ResponseBody
   @RequestMapping({"/main/ctgInsert.html"})
   public String insert(String ctg_name, String ctg_img, Integer status, Integer sort) {
     this.map.put("ctg_name", ctg_name);
     this.map.put("ctg_img", ctg_img);
     this.map.put("status", Integer.valueOf(1));
     this.map.put("sort", Integer.valueOf(0));
     return String.valueOf(categoryService.insert(map));
   }
   @ResponseBody
   @RequestMapping({"/main/ctgUpdate.html"})
   public String update(Integer ctg_id, String ctg_name) { this.map.put("ctg_name", ctg_name);
     this.map.put("ctg_id", ctg_id);
     return String.valueOf(this.categoryService.update(this.map)); }
 
   @ResponseBody
   @RequestMapping({"/main/ctgUpstatus.html"})
   public String upstatus(Integer ctg_id, Integer status,String delmark) {
     this.map.put("status", status);
     this.map.put("ctg_id", ctg_id);
     if("mark".equals(delmark)){
    	 return String.valueOf(this.categoryService.upstatus(this.map));
     }else{
    	 return "1";
     }
   }
   @ResponseBody
   @RequestMapping({"/main/ctgSort.html"})
   public String sort(Integer ctg_id, Integer sort) {
     this.map.put("sort", sort);
     this.map.put("ctg_id", ctg_id);
     return String.valueOf(this.categoryService.sort(this.map));
   }
 
   @RequestMapping({"/main/ctgList.html"})
   public ModelAndView list(Integer status) {
     this.category.setStatus(status);
     List list = this.categoryService.list(this.category);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/category/list");
     return ml;
   }
   @RequestMapping({"/main/ctgListById.html"})
   public ModelAndView listById(Integer ctg_id) {
     this.category.setCtg_id(ctg_id);
     List list = this.categoryService.listById(this.category);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/category/info");
     return ml;
   }
   @RequestMapping({"/page/category.html"})
   public ModelAndView ctgList(@RequestParam(defaultValue="0") Integer ctg_id) {
     this.category.setStatus(Integer.valueOf(1));
     List ctgList = this.categoryService.list(this.category);
     List goodsList = new ArrayList();
     if (ctgList.size() > 0) {
       this.goods.setStatus(Integer.valueOf(1));
       if (ctg_id.intValue() == 0) {
         ctg_id = ((Category)ctgList.get(0)).getCtg_id();
       }
       this.goods.setCtg_id(ctg_id);
       this.goods.setType(Integer.valueOf(1));
       goodsList = this.goodsService.list(this.goods);
     }
     ModelAndView ml = new ModelAndView();
     ml.addObject("ctg_id", ctg_id);
     ml.addObject("ctgList", ctgList);
     ml.addObject("goodsList", goodsList);
     ml.setViewName("page/category");
     return ml;
   }
   
   @RequestMapping({"/page/BaoJie.html"})
   public ModelAndView BjList() {
     
     ModelAndView ml = new ModelAndView();

     ml.setViewName("page/baojie");
     return ml;
   }
   @RequestMapping({"/page/PaoTui.html"})
   public ModelAndView PtList() {
     
     ModelAndView ml = new ModelAndView();
     List list1 = this.errandsService.list(this.errands);
     List list2 = this.guaranteeService.list(this.guarantee);
     String dbfy;
     String ptfy;
     float zjfy;
     
     ptfy=((Errands)list1.get(0)).getErrands_price().toString();
     dbfy=((Guarantee)list2.get(0)).getGuarant_price().toString();
     
     zjfy = Float.parseFloat(dbfy)+Float.parseFloat(ptfy);
     
     ml.addObject("dbfy", dbfy);
     ml.addObject("ptfy", ptfy);
     ml.addObject("zjfy", zjfy);
     ml.setViewName("page/paotui");
     return ml;
   }
   
   @RequestMapping({"/page/DaiBan.html"})
   public ModelAndView DaiBan() {
     
	   ModelAndView ml = new ModelAndView();
	     ml.setViewName("page/daiban");
	     return ml;
   }
   
   @RequestMapping({"/page/JieSong.html"})
   public ModelAndView JieSong() {
     
	   ModelAndView ml = new ModelAndView();
	     ml.setViewName("page/jiesong");
	     return ml;
   }
   
   @RequestMapping({"/page/PaoTuiIndex.html"})
   public ModelAndView Ptindex() {
     
     ModelAndView ml = new ModelAndView();
     ml.setViewName("page/paotuiindex");
     return ml;
   }
   
   
   @RequestMapping({"/page/m_category.html"})
   public ModelAndView ctgListm1(@RequestParam(defaultValue="0") Integer ctg_id) {
     this.category.setStatus(Integer.valueOf(1));
     List ctgList = this.categoryService.list(this.category);
     List goodsList = new ArrayList();
     if (ctgList.size() > 0) {
       this.goods.setStatus(Integer.valueOf(1));
       if (ctg_id.intValue() == 0) {
         ctg_id = ((Category)ctgList.get(0)).getCtg_id();
       }
       this.goods.setCtg_id(ctg_id);
       this.goods.setType(Integer.valueOf(1));
       goodsList = this.goodsService.list(this.goods);
     }
     ModelAndView ml = new ModelAndView();
     ml.addObject("ctg_id", ctg_id);
     ml.addObject("ctgList", ctgList);
     ml.addObject("goodsList", goodsList);
     ml.setViewName("page/m_category");
     return ml;
   }
 }

 