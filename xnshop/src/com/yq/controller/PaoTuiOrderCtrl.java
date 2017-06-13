package com.yq.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.yq.entity.Address;
import com.yq.entity.Area;
import com.yq.entity.Cart;
import com.yq.entity.Coupons;
import com.yq.entity.Errands;
import com.yq.entity.Freight;
import com.yq.entity.Goods;
import com.yq.entity.GoodsJson;
import com.yq.entity.GoodsOther;
import com.yq.entity.Guarantee;
import com.yq.entity.Order;
import com.yq.entity.User;
import com.yq.service.AddressService;
import com.yq.service.AreaService;
import com.yq.service.CartService;
import com.yq.service.CouponsService;
import com.yq.service.ErrandsService;
import com.yq.service.FreightService;
import com.yq.service.GoodsService;
import com.yq.service.GuaranteeService;
import com.yq.service.OrderService;
import com.yq.service.UserService;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;
import com.yq.weixin.pay.action.NotifyServlet;
import com.yq.weixin.pay.action.TopayServlet;
import com.yq.weixin.pay.util.GetWxOrderno;
import com.yq.weixin.servlet.WechatPushMassage;



@Controller
@RequestMapping
public class PaoTuiOrderCtrl  extends StringUtil {
	
	 
	   @Autowired
	   private ErrandsService errandsService;
	   private Errands errands = new Errands();
	   
	   
	   @Autowired
	   private GuaranteeService guaranteeService;
	   private Guarantee guarantee = new Guarantee();
	   
	 @Autowired
	   private OrderService orderService;
	   private Order order = new Order();
	   
	/*   @Autowired
	   private NewOrderService neworderService;
	   private NewOrder neworder = new NewOrder();
	 */
	   @Autowired
	   private CartService cartService;
	   private Cart cart = new Cart();
	 
	   @Autowired
	   private CouponsService couponsService;
	   private Coupons coupons = new Coupons();
	 
	   @Autowired
	   private AddressService addressService;
	   private Address address = new Address();
	 
	   @Autowired
	   private FreightService freightService;
	   private Freight freight = new Freight();
	 
	   @Autowired
	   private UserService userService;
	   private User user = new User();
	 
	   @Autowired
	   private AreaService areaService;
	   private Area area = new Area();
	 
	   @Autowired
	   private GoodsService goodsService;
	   private Goods goods = new Goods();
	   Gson gson = new Gson();
	   Map<String, Object> map = new HashMap();
	   SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   WechatPushMassage wechatPushMassage = new WechatPushMassage();
	 
	 
	  
	   @RequestMapping({"/page/payOrder1.html"})
	   public ModelAndView payOrder(Integer order_id, HttpServletRequest request, HttpServletResponse response, HttpSession session)
	   {
	     this.order.setOrder_id(order_id.intValue());
	     List list = this.orderService.listById(this.order);
	     this.map.put("list", list);
	     ModelAndView ml = new ModelAndView();
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list.get(i)).getGoods_name().split(",-=");
	
	         String[] gPrice = ((Order)list.get(i)).getGoods_price().split(",-=");
	         String[] gNum = ((Order)list.get(i)).getGoods_num().split(",-=");
	 
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	      
	           ord.setGoods_price(gPrice[m]);
	           ord.setGoods_num(gNum[m]);
	           ordList.add(ord);
	         }
	         this.map.put("ord" + i, ordList);
	       }
	       if (((Order)list.get(0)).getGoods_total().floatValue() != 0.0F) {
	         TopayServlet.getPackage(list, request, response, session);
	         ml.addObject("map", this.map);
	        // ml.setViewName("page/pay-order");
	         List list1 = this.errandsService.list(this.errands);
	         List list2 = this.guaranteeService.list(this.guarantee);
	         String dbfy;
	         String ptfy;
	         float zjfy;
	         
	         ptfy=((Errands)list1.get(0)).getErrands_price().toString();
	         dbfy=((Guarantee)list2.get(0)).getGuarant_price().toString();
	         
	         zjfy = Float.parseFloat(dbfy)+Float.parseFloat(ptfy);
	         
	        // ml.addObject("dbfy", dbfy);
	        // ml.addObject("ptfy", ptfy);
	         ml.addObject("zjfy", zjfy);
	         
	           
	           ml.setViewName("page/paotuipayorder");
	       } else {
	         this.map.put("status", Integer.valueOf(1));
	         this.map.put("order_id", order_id);
	         String url = this.orderService.upstatus(this.map) == 1 ? "redirect:orderList.html" : "error";
	         ml.setViewName(url);
	       }
	       return ml;
	     }
	     ml.addObject("error", "payOrder无带支付订单！");
	     ml.setViewName("page/error");
	     return ml;
	   }
	   
	   
	   @RequestMapping({"/page/orderList1.html"})
	   public ModelAndView list(@RequestParam(defaultValue="-2") Integer status, String oppen_id, HttpSession session)
	   {
	     this.order.setOppen_id(getOppen_id(session));
	     this.order.setStatus(-2);
	     this.order.setStart_time("");
	     this.order.setEnd_time("");
	     this.order.setCtg_name("");
	     this.order.setGoods_name("");
	     this.order.setAddr_name("");
	     List list = this.orderService.list(this.order);
	     System.out.println("list=" + list.size());
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list.get(i)).getGoods_name().split(",-=");
	         String[] gImg = ((Order)list.get(i)).getGoods_img().split(",-=");
	         String[] gPrice = ((Order)list.get(i)).getGoods_price().split(",-=");
	         String[] gNum = ((Order)list.get(i)).getGoods_num().split(",-=");
	 
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	           ord.setGoods_img(gImg[m]);
	           ord.setGoods_price(gPrice[m]);
	           ord.setGoods_num(gNum[m]);
	           ordList.add(ord);
	         }
	         this.map.put("ord" + i, ordList);
	       }
	     }
	     this.order.setStatus(0);
	     List list0 = this.orderService.list(this.order);
	     if (list0.size() > 0) {
	       for (int i = 0; i < list0.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list0.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list0.get(i)).getGoods_name().split(",-=");
	         String[] gImg = ((Order)list0.get(i)).getGoods_img().split(",-=");
	         String[] gPrice = ((Order)list0.get(i)).getGoods_price().split(",-=");
	         String[] gNum = ((Order)list0.get(i)).getGoods_num().split(",-=");
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	           ord.setGoods_img(gImg[m]);
	           ord.setGoods_price(gPrice[m]);
	           ord.setGoods_num(gNum[m]);
	           ordList.add(ord);
	         }
	         this.map.put("ord0" + i, ordList);
	       }
	     }
	 
	     this.order.setStatus(1);
	     List list1 = this.orderService.list(this.order);
	     if (list1.size() > 0) {
	       for (int i = 0; i < list1.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list1.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list1.get(i)).getGoods_name().split(",-=");
	         String[] gImg = ((Order)list1.get(i)).getGoods_img().split(",-=");
	         String[] gPrice = ((Order)list1.get(i)).getGoods_price().split(",-=");
	         String[] gNum = ((Order)list1.get(i)).getGoods_num().split(",-=");
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	           ord.setGoods_img(gImg[m]);
	           ord.setGoods_price(gPrice[m]);
	           ord.setGoods_num(gNum[m]);
	           ordList.add(ord);
	         }
	         this.map.put("ord1" + i, ordList);
	       }
	     }
	     this.order.setStatus(2);
	     List list2 = this.orderService.list(this.order);
	     if (list2.size() > 0) {
	       for (int i = 0; i < list2.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list2.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list2.get(i)).getGoods_name().split(",-=");
	         String[] gImg = ((Order)list2.get(i)).getGoods_img().split(",-=");
	         String[] gPrice = ((Order)list2.get(i)).getGoods_price().split(",-=");
	         String[] gNum = ((Order)list2.get(i)).getGoods_num().split(",-=");
	         Order ord = new Order();
	         for (int m = 0; m < gId.length; m++) {
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	           ord.setGoods_img(gImg[m]);
	           ord.setGoods_price(gPrice[m]);
	           ord.setGoods_num(gNum[m]);
	           ordList.add(ord);
	         }
	         this.map.put("ord2" + i, ordList);
	       }
	     }
	     this.map.put("list", list);
	     this.map.put("list0", list0);
	     this.map.put("list1", list1);
	     this.map.put("list2", list2);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("map", this.map);
	     ml.setViewName("page/order-list");
	     return ml;
	   }
	   
	   //查看跑腿订单======代买什么=======
	   @RequestMapping({"/main/paotuiorderList.html"})
	   public ModelAndView orderList(@RequestParam(defaultValue="1") Integer currentPage, @RequestParam(defaultValue="-2") Integer status, @RequestParam(defaultValue="-2") Integer order_cityid,@RequestParam(defaultValue="") String start_time, @RequestParam(defaultValue="") String end_time, @RequestParam(defaultValue="") String ctg_name, @RequestParam(defaultValue="") String goods_name, @RequestParam(defaultValue="") String addr_name, HttpServletRequest request, HttpSession session)
	     throws UnsupportedEncodingException
	   {
	     start_time = URLDecoder.decode(start_time, "utf-8");
	     end_time = URLDecoder.decode(end_time, "utf-8");
	     ctg_name = URLDecoder.decode(ctg_name, "utf-8");
	     goods_name = URLDecoder.decode(goods_name, "utf-8");
	     addr_name = URLDecoder.decode(addr_name, "utf-8");
	     
	    
	     this.order.setOppen_id("");
	     this.order.setStatus(status.intValue());
	     this.order.setStart_time(start_time);
	     this.order.setEnd_time(end_time);
	     this.order.setCtg_name(ctg_name);
	     this.order.setGoods_name(goods_name);
	     this.order.setAddr_name(addr_name);
	     this.order.setOrder_cityid(order_cityid);
	     
	     int total = this.orderService.count(this.order);
	     PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
	     this.order.setPageSize(this.pagesize_1.intValue());
	     this.order.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
	     List list = this.orderService.paotuilist(this.order);
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list.get(i)).getGoods_name().split(",-=");
	  
	         String[] gPrice = ((Order)list.get(i)).getGoods_price().split(",-=");
	         String[] gNum = ((Order)list.get(i)).getGoods_num().split(",-=");
	 
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	        
	           ord.setGoods_price(gPrice[m]);
	           ord.setGoods_num(gNum[m]);
	           ordList.add(ord);
	         }
	         this.map.put("ord" + i, ordList);
	       }
	     }
	 
	     this.map.put("list", list);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("map", this.map);
	     ml.addObject("status", status);
	     ml.addObject("start_time", start_time);
	     ml.addObject("end_time", end_time);
	     ml.addObject("ctg_name", ctg_name);
	     ml.addObject("goods_name", goods_name);
	     ml.addObject("addr_name", addr_name);
	     ml.setViewName("main/errandsorder/list");
	     return ml;
	   }
	 //==============================代买========================================================
	   @ResponseBody
	   @RequestMapping({"/page/paotuiorderInsert.html"})
	   public String insert(String goods_id,String goods_spe, String goods_price, String goods_num, Float goods_total, Integer goods_total_num, Integer cps_id, String cps_name, @RequestParam(defaultValue="0") Float cps_price, String addr_name, String receive, String oppen_id, Integer status, String note,String paystate, String order_what,String order_where,String order_sentwhere,HttpSession session)
	   {
	     String add_time = this.sdf.format(new Date());
	     oppen_id = getOppen_id(session);
	     Order order = new Order();
	     order.setGoods_id(goods_id);
	     order.setGoods_name("代买");
	     
	     
	     order.setGoods_img("http://www.61songcai.com/xnshop/page/images/b5.png");
	     
	     order.setGoods_price("1");
	     order.setGoods_num("1");
	   
	     order.setGoods_spe(goods_spe);
	     order.setGoods_price(goods_price);
	     order.setGoods_num(goods_num);
	     order.setGoods_total(goods_total);
	     order.setGoods_total_num(goods_total_num);
	     order.setCps_id(cps_id);
	     order.setCps_name(cps_name);
	     order.setAddr_name(addr_name);
	     order.setCps_price(cps_price);
	     order.setReceive(receive);
	     order.setOppen_id(oppen_id);
	     order.setAdd_time(add_time);
	     order.setStatus(0);
	     order.setNote(note.trim());
	     order.setPaystate(paystate.trim());
	     order.setOrder_where(order_where);
	     order.setOrder_what(order_what);
	     order.setOrder_sentwhere(order_sentwhere);
	      
	     
          int city_id =  (Integer) session.getAttribute("city_id"); 
          order.setOrder_cityid(city_id);
         
	     
	     //======定义跑腿服务订单类型为1==============================
	     order.setOrder_type(1);
 
	     if (this.orderService.paotuiinsert(order) == 1) {
	       if (goods_id.contains(",-=")) {
	         String[] gids = goods_id.split(",-=");
	         for (int i = 0; i < gids.length; i++) {
	           this.map.put("goods_id", gids[i]);
	           this.cartService.delete(this.map);
	         }
	       } else {
	         this.map.put("goods_id", goods_id);
	         session.setAttribute("cart_num", Integer.valueOf(0));
	         this.cartService.delete(this.map);
	       }
	       if (cps_id != null) {
	         this.map.put("status", Integer.valueOf(0));
	         this.map.put("cps_id", cps_id);
	         this.couponsService.upstatus(this.map);
	       }
	       return String.valueOf(order.getOrder_id());
	     }
	     return "0";
	   }
	 
	   //==========================接送========================
	   @ResponseBody
	   @RequestMapping({"/page/jiesongorderInsert.html"})
	   public String insert3(String goods_id, String goods_name,String details, String tel, String username,Integer goods_total_num, Integer cps_id, String cps_name, @RequestParam(defaultValue="0") Float cps_price, String addr_name, String receive, String oppen_id, Integer status, String note,String paystate, String order_what,String addr_b,String addr_e,HttpSession session)
	   {
	     String add_time = this.sdf.format(new Date());
	     oppen_id = getOppen_id(session);
	     Order order = new Order();
	     order.setGoods_id(goods_id);
	     order.setGoods_name(goods_name);
	    
	     order.setOrder_detail(details);
	     
	     order.setGoods_img("http://www.61songcai.com/xnshop/page/images/b5.png");
	     
	     order.setGoods_price("20");
	     order.setGoods_num("1");
	    //======================查询接送费用===================
	     
	     List jiesonglist = this.errandsService.jiesonglist(errands);
         String jiesongfy;
       
         jiesongfy=((Errands)jiesonglist.get(0)).getErrands_price().toString();
	    //=================================================
	    // order.setGoods_total(20.00F);
	     
	     order.setGoods_total(Float.parseFloat(jiesongfy));
	    
	     
	     
	     
	     order.setGoods_total_num(goods_total_num);
	     order.setCps_id(cps_id);
	     order.setCps_name(cps_name);
	     order.setAddr_name(addr_name);
	     order.setCps_price(cps_price);
	     order.setReceive(receive);
	     order.setOppen_id(oppen_id);
	     order.setAdd_time(add_time);
	     order.setStatus(0);
	     order.setNote(note.trim());
	     order.setPaystate(paystate.trim());
	     order.setOrder_where(addr_b);
	     order.setOrder_what(order_what);
	     order.setOrder_sentwhere(addr_e);
	     order.setOrder_tel(tel);
	     order.setOrder_username(username);
	     //======定义跑腿服务订单类型为3==============================
	     order.setOrder_type(3);
	     int city_id =  (Integer) session.getAttribute("city_id"); 
	     order.setOrder_cityid(city_id);
      
 
	     if (this.orderService.jiesonginsert(order) == 1) {
	       if (goods_id.contains(",-=")) {
	         String[] gids = goods_id.split(",-=");
	         for (int i = 0; i < gids.length; i++) {
	           this.map.put("goods_id", gids[i]);
	           this.cartService.delete(this.map);
	         }
	       } else {
	         this.map.put("goods_id", goods_id);
	         session.setAttribute("cart_num", Integer.valueOf(0));
	         this.cartService.delete(this.map);
	       }
	       if (cps_id != null) {
	         this.map.put("status", Integer.valueOf(0));
	         this.map.put("cps_id", cps_id);
	         this.couponsService.upstatus(this.map);
	       }
	       return String.valueOf(order.getOrder_id());
	     }
	     return "0";
	   }
	   //================代 办服务 =========================================
	   @ResponseBody
	   @RequestMapping({"/page/daibanorderInsert.html"})
	   public String insert4(String goods_id,String tel, String username,String details, String addr_work,Integer goods_total_num, Integer cps_id, String cps_name, @RequestParam(defaultValue="0") Float cps_price, String addr_name, String receive, String oppen_id, Integer status, String note,String paystate,String order_where,String order_sentwhere,HttpSession session)
	   {
	     String add_time = this.sdf.format(new Date());
	     oppen_id = getOppen_id(session);
	     Order order = new Order();
	     order.setGoods_id(goods_id);
	     order.setGoods_name("代办");
	/*     order.setGoods_img(goods_img);
	     order.setGoods_spe(goods_spe);
	     order.setGoods_price(goods_price);
	     order.setGoods_num(goods_num);*/
	   //  order.setGoods_total(30.0f);
	     //order.setGoods_total(30.00F);
	     
       /*  order.setGoods_img("xxxxxxxxxx");
	     
	     order.setGoods_price("30");
	     order.setGoods_num("1");*/
	     
	     order.setGoods_total_num(goods_total_num);
	     order.setCps_id(cps_id);
	     order.setCps_name(cps_name);
	     order.setAddr_name(addr_name);
	     order.setCps_price(cps_price);
	     order.setReceive(receive);
	     order.setOppen_id(oppen_id);
	     order.setAdd_time(add_time);
	     order.setStatus(0);
	     order.setNote(note.trim());
	     order.setPaystate(paystate.trim());
	     order.setOrder_where(order_where);
	   //  order.setOrder_what(order_what);
	     order.setOrder_sentwhere(addr_work);
	     order.setGoods_img("http://www.61songcai.com/xnshop/page/images/b5.png");
	     
	     order.setOrder_detail(details);
	     order.setOrder_tel(tel);
	     order.setOrder_username(username);
	     
	     int city_id =  (Integer) session.getAttribute("city_id"); 
         order.setOrder_cityid(city_id); 
	     
	     //======定义跑腿服务订单类型为4==============================
	     order.setOrder_type(4);
	     
	     //=======================查询代办费用==============
	     List daibanlist = this.errandsService.daibanlist(errands);
         String daibanfy;
       
         daibanfy=((Errands)daibanlist.get(0)).getErrands_price().toString();
        // Float.parseFloat(daibanfy);
	     //===================
	     //order.setGoods_total(30.00F);
         
         order.setGoods_total( Float.parseFloat(daibanfy));
 
	     if (this.orderService.daibaninsert(order) == 1) {
	       if (goods_id.contains(",-=")) {
	         String[] gids = goods_id.split(",-=");
	         for (int i = 0; i < gids.length; i++) {
	           this.map.put("goods_id", gids[i]);
	           this.cartService.delete(this.map);
	         }
	       } else {
	         this.map.put("goods_id", goods_id);
	         session.setAttribute("cart_num", Integer.valueOf(0));
	         this.cartService.delete(this.map);
	       }
	       if (cps_id != null) {
	         this.map.put("status", Integer.valueOf(0));
	         this.map.put("cps_id", cps_id);
	         this.couponsService.upstatus(this.map);
	       }
	       return String.valueOf(order.getOrder_id());
	     }
	     return "0";
	   }
	 //=====================接送支付===============================================
	   @RequestMapping({"/page/payOrder3.html"})
	   public ModelAndView payOrder3(Integer order_id, HttpServletRequest request, HttpServletResponse response, HttpSession session)
	   {
	     this.order.setOrder_id(order_id.intValue());
	     List list = this.orderService.listById(this.order);
	     this.map.put("list", list);
	     ModelAndView ml = new ModelAndView();
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String  gId = ((Order)list.get(i)).getGoods_id();
	         String  gName = ((Order)list.get(i)).getGoods_name();
	         Float   total= ((Order)list.get(i)).getGoods_total();
	           Order ord = new Order();
	           ord.setGoods_id("111111");
	           ord.setGoods_name("333333333"); 
	      
	         //  ord.setGoods_total(20.0F);
	           ord.setGoods_total(total);
	           ord.setGoods_price("20");
	           ordList.add(ord);
	        
	         this.map.put("ord" + i, ordList);
	       }
	     if (((Order)list.get(0)).getGoods_total().floatValue() != 0.0F) {
	         TopayServlet.getPackage(list, request, response, session);
	           ml.addObject("map", this.map);
	  
	  
	           ml.setViewName("page/jiesongpayorder");
	       } else {
	         this.map.put("status", Integer.valueOf(1));
	         this.map.put("order_id", order_id);
	         String url = this.orderService.upstatus(this.map) == 1 ? "redirect:orderList.html" : "error";
	         ml.setViewName(url);
	       }
	       return ml;
	     }
	     ml.addObject("error", "payOrder无带支付订单！");
	     ml.setViewName("page/error");
	     return ml;
	   }
	   
	   
	   //=====================代办支付===============================================
	   @RequestMapping({"/page/payOrder4.html"})
	   public ModelAndView payOrder4(Integer order_id, HttpServletRequest request, HttpServletResponse response, HttpSession session)
	   {
	     this.order.setOrder_id(order_id.intValue());
	     List list = this.orderService.listById(this.order);
	     this.map.put("list", list);
	     ModelAndView ml = new ModelAndView();
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String gId = ((Order)list.get(i)).getGoods_id();
	         String gName = ((Order)list.get(i)).getGoods_name();
	         Float   total= ((Order)list.get(i)).getGoods_total();
	    
	           Order ord = new Order();
	           ord.setGoods_id(gId);
	           ord.setGoods_name(gName);
	       
	          // ord.setGoods_total(30.0F);
	           ord.setGoods_total(total);
	           ord.setGoods_price("30");
	           ordList.add(ord);
	          
	         this.map.put("ord" + i, ordList);
	       }
	     
	     if (((Order)list.get(0)).getGoods_total().floatValue() != 0.0F) {
	         TopayServlet.getPackage(list, request, response, session);
	         ml.addObject("map", this.map);
	  
	  
	           ml.setViewName("page/daibanpayorder");
	       } else {
	         this.map.put("status", Integer.valueOf(1));
	         this.map.put("order_id", order_id);
	         String url = this.orderService.upstatus(this.map) == 1 ? "redirect:orderList.html" : "error";
	         ml.setViewName(url);
	       }
	       return ml;
	     }
	     ml.addObject("error", "payOrder无带支付订单！");
	     ml.setViewName("page/error");
	     return ml;
	   }
	   
	   
	   //查看代办订单=============
	   @RequestMapping({"/main/daibanorderList.html"})
	   public ModelAndView orderList4(@RequestParam(defaultValue="1") Integer currentPage,@RequestParam(defaultValue="-1") Integer order_cityid, @RequestParam(defaultValue="-2") Integer status, @RequestParam(defaultValue="") String start_time, @RequestParam(defaultValue="") String end_time, @RequestParam(defaultValue="") String ctg_name, @RequestParam(defaultValue="") String goods_name, @RequestParam(defaultValue="") String addr_name, HttpServletRequest request, HttpSession session)
	     throws UnsupportedEncodingException
	   {
	     start_time = URLDecoder.decode(start_time, "utf-8");
	     end_time = URLDecoder.decode(end_time, "utf-8");
	     ctg_name = URLDecoder.decode(ctg_name, "utf-8");
	     goods_name = URLDecoder.decode(goods_name, "utf-8");
	     addr_name = URLDecoder.decode(addr_name, "utf-8");
	     this.order.setOppen_id("");
	     this.order.setStatus(status.intValue());
	     this.order.setStart_time(start_time);
	     this.order.setEnd_time(end_time);
	     this.order.setCtg_name(ctg_name);
	     this.order.setGoods_name(goods_name);
	     this.order.setAddr_name(addr_name);
	     
	     this.order.setOrder_cityid(order_cityid);
	     
	     int total = this.orderService.count(this.order);
	     PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
	     this.order.setPageSize(this.pagesize_1.intValue());
	     this.order.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
	     List list = this.orderService.daibanlist(this.order);
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list.get(i)).getGoods_name().split(",-=");
	    
	   
	
	 
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	        
	           ordList.add(ord);
	         }
	         this.map.put("ord" + i, ordList);
	       }
	     }
	 
	     this.map.put("list", list);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("map", this.map);
	     ml.addObject("status", status);
	     ml.addObject("start_time", start_time);
	     ml.addObject("end_time", end_time);
	     ml.addObject("ctg_name", ctg_name);
	     ml.addObject("goods_name", goods_name);
	     ml.addObject("addr_name", addr_name);
	     ml.setViewName("main/daibanorder/list");
	     return ml;
	   }
	   
	   
	   //查看接送订单=============
	   @RequestMapping({"/main/jiesongorderList.html"})
	   public ModelAndView orderList3(@RequestParam(defaultValue="1") Integer currentPage,@RequestParam(defaultValue="-1") Integer order_cityid, @RequestParam(defaultValue="-2") Integer status, @RequestParam(defaultValue="") String start_time, @RequestParam(defaultValue="") String end_time, @RequestParam(defaultValue="") String ctg_name, @RequestParam(defaultValue="") String goods_name, @RequestParam(defaultValue="") String addr_name, HttpServletRequest request, HttpSession session)
	     throws UnsupportedEncodingException
	   {
	     start_time = URLDecoder.decode(start_time, "utf-8");
	     end_time = URLDecoder.decode(end_time, "utf-8");
	     ctg_name = URLDecoder.decode(ctg_name, "utf-8");
	     goods_name = URLDecoder.decode(goods_name, "utf-8");
	     addr_name = URLDecoder.decode(addr_name, "utf-8");
	     this.order.setOppen_id("");
	     this.order.setStatus(status.intValue());
	     this.order.setStart_time(start_time);
	     this.order.setEnd_time(end_time);
	     this.order.setCtg_name(ctg_name);
	     this.order.setGoods_name(goods_name);
	     this.order.setAddr_name(addr_name);
	     this.order.setOrder_cityid(order_cityid);
	     int total = this.orderService.count(this.order);
	     PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
	     this.order.setPageSize(this.pagesize_1.intValue());
	     this.order.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
	     List list = this.orderService.jiesonglist(this.order);
	     if (list.size() > 0) {
	       for (int i = 0; i < list.size(); i++) {
	         List ordList = new ArrayList();
	         String[] gId = ((Order)list.get(i)).getGoods_id().split(",-=");
	         String[] gName = ((Order)list.get(i)).getGoods_name().split(",-=");
	
	 
	         for (int m = 0; m < gId.length; m++) {
	           Order ord = new Order();
	           ord.setGoods_id(gId[m]);
	           ord.setGoods_name(gName[m]);
	     
	           ordList.add(ord);
	         }
	         this.map.put("ord" + i, ordList);
	       }
	     }
	 
	     this.map.put("list", list);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("map", this.map);
	     ml.addObject("status", status);
	     ml.addObject("start_time", start_time);
	     ml.addObject("end_time", end_time);
	     ml.addObject("ctg_name", ctg_name);
	     ml.addObject("goods_name", goods_name);
	     ml.addObject("addr_name", addr_name);
	     ml.setViewName("main/jiesongorder/list");
	     return ml;
	   }
   //  jiesong 3
}
