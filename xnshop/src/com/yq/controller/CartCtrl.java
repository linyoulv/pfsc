 package com.yq.controller;
 
 import com.google.gson.Gson;
 import com.yq.entity.Cart;
 import com.yq.entity.User;
 import com.yq.service.CartService;
 import com.yq.service.UserService;
 import com.yq.util.StringUtil;
 import java.io.IOException;
 import java.io.PrintWriter;
 import java.text.SimpleDateFormat;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
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
 public class CartCtrl extends StringUtil
 {
 
   @Autowired
   private CartService cartService;
   private Cart cart = new Cart();
 
   @Autowired
   private UserService userService;
   private User user = new User();
   private static Gson gson = new Gson();
   Map<String, Object> map = new HashMap();
   SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
 
   @ResponseBody
   @RequestMapping({"/page/cartInsert.html"})
   public void insert(Integer goods_id, String goods_name, String goods_img, String goods_spe, Float goods_price, Float goods_total, @RequestParam(defaultValue="1") Integer goods_num, String oppen_id, HttpServletResponse response, HttpSession session)
   {
     try {
       this.map.put("goods_id", goods_id);
       this.map.put("goods_name", goods_name);
       this.map.put("goods_img", goods_img);
       this.map.put("goods_spe", goods_spe);
       this.map.put("goods_price", goods_price);
       oppen_id = getOppen_id(session);
       this.map.put("oppen_id", oppen_id);
       this.cart.setGoods_id(goods_id);
       this.cart.setOppen_id(oppen_id);
       int total = this.cartService.count(this.cart);
       int cart_num = Integer.parseInt(session.getAttribute("cart_num").toString()) + 1;
       session.setAttribute("cart_num", Integer.valueOf(cart_num));
       Map map2 = new HashMap();
       int rs = 0;
       if (total > 0) {
         goods_num = Integer.valueOf(this.cartService.goodsnum(this.cart) + 1);
         goods_total = Float.valueOf(goods_price.floatValue() * goods_num.intValue());
         this.map.put("goods_total", goods_total);
         this.map.put("goods_num", goods_num);
         rs = this.cartService.update(this.map);
       } else {
         goods_total = Float.valueOf(goods_price.floatValue() * goods_num.intValue());
         this.map.put("goods_total", goods_total);
         this.map.put("goods_num", goods_num);
         rs = this.cartService.insert(this.map);
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
   @RequestMapping({"/page/cartUpdate.html"})
   public void update(Float goods_price, Float goods_total, Integer goods_num, Integer goods_id, Integer s, HttpServletResponse response, HttpSession session) {
     try { this.map.put("oppen_id", getOppen_id(session));
       this.map.put("goods_num", goods_num);
       this.map.put("goods_total", Float.valueOf(goods_num.intValue() * goods_price.floatValue()));
       this.map.put("goods_id", goods_id);
       int cart_num = Integer.parseInt(session.getAttribute("cart_num").toString());
       if (s.intValue() == 1)
         cart_num++;
       else {
         cart_num--;
       }
       session.setAttribute("cart_num", Integer.valueOf(cart_num));
       Map map2 = new HashMap();
       int rs = 0;
       if (goods_num.intValue() < 1)
         rs = this.cartService.delete(this.map);
       else {
         rs = this.cartService.update(this.map);
       }
       map2.put("rs_code", Integer.valueOf(rs));
       map2.put("cart_num", Integer.valueOf(cart_num));
 
       response.getWriter().write(gson.toJson(map2));
     } catch (IOException e)
     {
       e.printStackTrace();
     }
   }
 
   @ResponseBody
   @RequestMapping({"/page/cartDel.html"})
   public void delete(Integer goods_id, HttpSession session, HttpServletResponse response) {
     int cart_num = Integer.parseInt(session.getAttribute("cart_num").toString()) - 1;
     session.setAttribute("cart_num", Integer.valueOf(cart_num));
     int rs = this.cartService.delete(this.map);
     Map map2 = new HashMap();
     this.map.put("goods_id", goods_id);
     map2.put("rs_code", Integer.valueOf(rs));
     map2.put("cart_num", Integer.valueOf(cart_num));
     try {
       response.getWriter().write(gson.toJson(map2));
     }
     catch (IOException e) {
       e.printStackTrace();
     }
   }
 
   
   
   @RequestMapping({"/page/cartList.html"})
   public ModelAndView list(String oppen_id, HttpSession session)
   {
     this.cart.setOppen_id(getOppen_id(session));
     List list = this.cartService.list(this.cart);
     Float tprice = this.cartService.goodstotalprice(this.cart);
     int tnum = this.cartService.goodstotalnum(this.cart);
     ModelAndView ml = new ModelAndView();
     ml.addObject("goods", list);
     ml.addObject("tprice", tprice.toString());
     ml.addObject("tnum", Integer.valueOf(tnum));
     ml.setViewName("page/cart");
     
     
     
     
     return ml;
   }
 }

 