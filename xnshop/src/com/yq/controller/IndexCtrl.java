 package com.yq.controller;
 
 import com.yq.entity.Area;
import com.yq.entity.Banner;
import com.yq.entity.Cart;
import com.yq.entity.Category;
import com.yq.entity.Goods;
import com.yq.entity.User;
import com.yq.service.AreaService;
import com.yq.service.BannerService;
import com.yq.service.CartService;
import com.yq.service.CategoryService;
import com.yq.service.GoodsService;
import com.yq.service.UserService;
import com.yq.util.StringUtil;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping({"/"})
 public class IndexCtrl extends StringUtil
 {
 
   @Autowired
   private UserService userService;
   private User user = new User();
 
   @Autowired
   private AreaService areaService;
   private Area area = new Area();
 
   @Autowired
   private CartService cartService;
   private Cart cart = new Cart();
 
   @Autowired
   private GoodsService goodsService;
   private Goods goods = new Goods();
 
   @Autowired
   private BannerService bannerService;
   private Banner banner = new Banner();
 
   @Autowired
   private CategoryService categoryService;
   private Category category = new Category();
   Map<String, Object> map = new HashMap();
 
   @RequestMapping({"/main/main.html"})
   public ModelAndView mainindex() {
     return new ModelAndView("main/index");
   }
 
   @RequestMapping({"/page/index.html"})
   public ModelAndView index(HttpSession session,@RequestParam(defaultValue="0") Integer city_id) {
     ModelAndView ml = new ModelAndView();
 
     this.goods.setType(Integer.valueOf(1));
     this.goods.setStatus(Integer.valueOf(1));
 
     this.banner.setType(Integer.valueOf(1));
     this.banner.setStatus(Integer.valueOf(1));
 
     this.goods.setIs_recommend(Integer.valueOf(1));
     List banList = this.bannerService.list1(this.banner);
     this.banner.setType(Integer.valueOf(2));
     List advList = this.bannerService.list(this.banner);
     this.goods.setCtg_id(Integer.valueOf(0));
     List hotGoodsList = this.goodsService.list(this.goods);
     System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + hotGoodsList.size());
     this.category.setStatus(Integer.valueOf(1));
     List ctgList = this.categoryService.list(this.category);
 
     for (int i = 0; i < ctgList.size(); i++) {
       this.goods.setIs_recommend(Integer.valueOf(0));
       this.goods.setCtg_id(((Category)ctgList.get(i)).getCtg_id());
       List goodsList = this.goodsService.list(this.goods);
       this.map.put("goodsList" + i, goodsList);
     }
     String  cityname;
     if(city_id==0){
    	 
         ml.addObject("cityname","文昌"); 
         cityname="文昌";
         
         
     }
     if(city_id==1){
    	 
    	 ml.addObject("cityname","湘潭"); 
    	 cityname="湘潭";
    	 
     }
     
     
     
     
 
     ml.addObject("map", this.map);
     ml.addObject("ctgList", ctgList);
     ml.addObject("banList", banList);
     ml.addObject("advList", advList);
     ml.addObject("hotGoodsList", hotGoodsList);
     String oppen_id = getOppen_id(session);
     this.cart.setOppen_id(oppen_id);
     int cart_num = this.cartService.goodstotalnum(this.cart);
     session.setAttribute("cart_num", Integer.valueOf(cart_num));
     session.setAttribute("city_id", city_id); 
 
     ml.setViewName("page/index");
 
     return ml;
   }
 
   @RequestMapping({"/page/m_index.html"})
   public ModelAndView m_index(HttpSession session) {
     ModelAndView ml = new ModelAndView();
 
     this.goods.setType(Integer.valueOf(1));
     this.goods.setStatus(Integer.valueOf(1));
 
     this.banner.setType(Integer.valueOf(1));
     this.banner.setStatus(Integer.valueOf(1));
 
     this.goods.setIs_recommend(Integer.valueOf(1));
     List banList = this.bannerService.list2(this.banner);
     this.banner.setType(Integer.valueOf(2));
     List advList = this.bannerService.list(this.banner);
     this.goods.setCtg_id(Integer.valueOf(0));
     List hotGoodsList = this.goodsService.list(this.goods);
     System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + hotGoodsList.size());
     this.category.setStatus(Integer.valueOf(1));
     List ctgList = this.categoryService.list(this.category);
 
     for (int i = 0; i < ctgList.size(); i++) {
       this.goods.setIs_recommend(Integer.valueOf(0));
       this.goods.setCtg_id(((Category)ctgList.get(i)).getCtg_id());
       List goodsList = this.goodsService.list(this.goods);
       this.map.put("goodsList" + i, goodsList);
     }
 
     ml.addObject("map", this.map);
     ml.addObject("ctgList", ctgList);
     ml.addObject("banList", banList);
     ml.addObject("advList", advList);
     ml.addObject("hotGoodsList", hotGoodsList);
     String oppen_id = getOppen_id(session);
     this.cart.setOppen_id(oppen_id);
     int cart_num = this.cartService.goodstotalnum(this.cart);
     session.setAttribute("cart_num", Integer.valueOf(cart_num));
 
     ml.setViewName("page/m_index");
 
     return ml;
   }
   
   @RequestMapping({"/page/citylist.html"})
   public ModelAndView cityindex() {
     return new ModelAndView("page/citylist");
   }
   
 
 }
 