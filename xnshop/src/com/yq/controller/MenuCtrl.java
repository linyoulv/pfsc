 package com.yq.controller;
 
 import com.google.gson.Gson;
 import com.yq.entity.Cart;
 import com.yq.entity.Goods;
 import com.yq.entity.User;
 import com.yq.service.CartService;
 import com.yq.service.GoodsService;
 import com.yq.service.UserService;
 import com.yq.util.PageUtil;
 import com.yq.util.StringUtil;
 import java.io.IOException;
 import java.io.PrintWriter;
 import java.text.SimpleDateFormat;
 import java.util.Date;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import javax.servlet.http.HttpSession;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.RequestParam;
 import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping
 public class MenuCtrl extends StringUtil
 {
 
   @Autowired
   private GoodsService goodsService;
   private Goods goods = new Goods();
 
   @Autowired
   private CartService cartService;
   private Cart cart = new Cart();
 
   @Autowired
   private UserService userService;
   private User user = new User();
   private static Gson gson = new Gson();
   Map<String, Object> map = new HashMap();
   SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
 
   @RequestMapping({"/main/menuAddjsp.html"})
   public ModelAndView addjsp() {
     ModelAndView ml = new ModelAndView();
     ml.setViewName("main/menu/add");
     return ml;
   }
 
   @ResponseBody
   @RequestMapping({"/main/menuInsert.html"})
   public String insert(String goods_name, String goods_img, Float goods_price, String goods_spe, String goods_detail, Integer ctg_id, Integer status, Integer type) {
     String add_time = this.sf.format(new Date());
     this.map.put("goods_name", goods_name);
     this.map.put("goods_img", goods_img);
     this.map.put("goods_spe", goods_spe);
     this.map.put("goods_price", goods_price);
     this.map.put("goods_detail", goods_detail);
     this.map.put("add_time", add_time);
     this.map.put("ctg_id", ctg_id);
     this.map.put("status", Integer.valueOf(1));
     this.map.put("type", Integer.valueOf(2));
     return String.valueOf(this.goodsService.insert(this.map));
   }
 
   @ResponseBody
   @RequestMapping({"/page/menuCartInsert.html"})
   public void insert(Integer goods_id, String goods_name, String goods_img, String goods_spe, Float goods_price, Float goods_total, @RequestParam(defaultValue="1") Integer goods_num, String oppen_id, HttpServletResponse response, HttpSession session)
   {
     try
     {
       int rs = 0;
       int cart_num = Integer.parseInt(session.getAttribute("cart_num").toString()) + 1;
       session.setAttribute("cart_num", Integer.valueOf(cart_num));
       Map map2 = new HashMap();
 
       oppen_id = getOppen_id(session);
       String datetime = this.sf.format(new Date());
       this.user.setOppen_id(oppen_id);
       this.user.setMember_time(datetime);
       if (this.userService.isMember(this.user) == 1)
       {
         this.map.put("goods_id", goods_id);
         this.map.put("goods_name", goods_name);
         this.map.put("goods_img", goods_img);
         this.map.put("goods_spe", goods_spe);
         this.map.put("goods_price", goods_price);
 
         this.map.put("oppen_id", oppen_id);
         this.cart.setGoods_id(goods_id);
         this.cart.setOppen_id(oppen_id);
         int total = this.cartService.count(this.cart);
 
         if (total > 0) {
           goods_num = Integer.valueOf(this.cartService.goodsnum(this.cart) + 1);
           goods_total = Float.valueOf(goods_price.floatValue() * goods_num.intValue());
           this.map.put("goods_total", goods_total);
           this.map.put("goods_num", goods_num);
           rs = this.cartService.update(this.map);
         }
         else
         {
           goods_total = Float.valueOf(goods_price.floatValue() * goods_num.intValue());
           this.map.put("goods_total", goods_total);
           this.map.put("goods_num", goods_num);
           rs = this.cartService.insert(this.map);
         }
       }
       else {
         rs = -1;
       }
       map2.put("rs_code", Integer.valueOf(rs));
       map2.put("cart_num", Integer.valueOf(cart_num));
 
       response.getWriter().write(gson.toJson(map2));
     }
     catch (IOException e) {
       e.printStackTrace();
     }
   }
 
   @ResponseBody
   @RequestMapping({"/main/menuUpdate.html"})
   public String update(String goods_name, String goods_img, Float goods_price, String goods_spe, String goods_detail, String add_time, Integer ctg_id, Integer goods_id) {
     this.map.put("goods_name", goods_name);
     this.map.put("goods_img", goods_img);
     this.map.put("goods_spe", goods_spe);
     this.map.put("goods_price", goods_price);
     this.map.put("goods_detail", goods_detail);
     this.map.put("add_time", add_time);
     this.map.put("ctg_id", ctg_id);
     this.map.put("goods_id", goods_id);
     this.map.put("type", Integer.valueOf(2));
     return String.valueOf(this.goodsService.update(this.map));
   }
 
   @ResponseBody
   @RequestMapping({"/main/menuUpstatus.html"})
   public String upstatus(Integer goods_id, Integer status) {
     this.map.put("status", status);
     this.map.put("goods_id", goods_id);
     return String.valueOf(this.goodsService.upstatus(this.map));
   }
 
   @RequestMapping({"/main/menuList.html"})
   public ModelAndView list(@RequestParam(defaultValue="1") Integer status, @RequestParam(defaultValue="1") Integer currentPage, HttpServletRequest request)
   {
     this.goods.setStatus(status);
     this.goods.setType(Integer.valueOf(2));
     int total = this.goodsService.count(this.goods);
     PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
     this.goods.setPageSize(this.pagesize_1.intValue());
     this.goods.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
     List list = this.goodsService.list(this.goods);
     ModelAndView ml = new ModelAndView();
     ml.addObject("goods", list);
     ml.setViewName("main/menu/list");
     return ml;
   }
 
   @RequestMapping({"/main/menuListById.html"})
   public ModelAndView listById(Integer goods_id)
   {
     this.goods.setGoods_id(goods_id);
     List list = this.goodsService.listById(this.goods);
     ModelAndView ml = new ModelAndView();
 
     ml.addObject("list", list);
     ml.setViewName("main/menu/info");
     return ml;
   }
 
   @RequestMapping({"/page/menuList.html"})
   public ModelAndView menuList(@RequestParam(defaultValue="1") Integer status) {
     this.goods.setType(Integer.valueOf(2));
     this.goods.setStatus(status);
     List list = this.goodsService.list(this.goods);
     ModelAndView ml = new ModelAndView();
     ml.addObject("goods", list);
     ml.setViewName("page/menu-list");
     return ml;
   }
 
   @RequestMapping({"/page/menuListById.html"})
   public ModelAndView menuListById(Integer goods_id)
   {
     this.goods.setGoods_id(goods_id);
     List list = this.goodsService.listById(this.goods);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("goods_id", goods_id);
     ml.setViewName("page/menu-info");
     return ml;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.controller.MenuCtrl
 * JD-Core Version:    0.6.2
 */