 package com.yq.controller;
 
 import com.yq.entity.Address;
 import com.yq.service.AddressService;
 import com.yq.util.StringUtil;
 import java.text.SimpleDateFormat;
 import java.util.Date;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.servlet.http.HttpSession;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.ResponseBody;
 import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping
 public class AddressCtrl extends StringUtil
 {
 
   @Autowired
   private AddressService addressService;
   private Address address = new Address();
   Map<String, Object> map = new HashMap();
   SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
 
   @RequestMapping({"/page/addrAddjsp.html"})
   public ModelAndView addjsp() {
     return new ModelAndView("page/address-add");
   }
 
   @ResponseBody
   @RequestMapping({"/page/addrInsert.html"})
   public String insert(String province, String city, String area, String addr_user, String addr_name, String addr_tel, String oppen_id, String sort, HttpSession session)
   {
     oppen_id = getOppen_id(session);
     this.map.put("addr_user", addr_user);
     this.map.put("addr_name", addr_name);
     this.map.put("addr_tel", addr_tel);
     this.map.put("province", province);
     this.map.put("city", city);
     this.map.put("area", area);
 
     this.map.put("oppen_id", oppen_id);
     return String.valueOf(addressService.insert(map));
   }
 
   @ResponseBody
   @RequestMapping({"/page/addrUpdate.html"})
   public String update(String province, String city, String area, String addr_user, String addr_name, String addr_tel, String oppen_id, Integer addr_id, HttpSession session)
   {
     this.map.put("addr_user", addr_user);
     this.map.put("addr_name", addr_name);
     this.map.put("addr_tel", addr_tel);
     this.map.put("province", province);
     this.map.put("city", city);
     this.map.put("area", area);
     this.map.put("addr_id", addr_id);
     return String.valueOf(addressService.insert(map));
   }
 
   @ResponseBody
   @RequestMapping({"/page/addrDel.html"})
   public String delete(Integer addr_id) {
     this.map.put("addr_id", addr_id);
     return String.valueOf(this.addressService.delete(this.map));
   }
   @ResponseBody
   @RequestMapping({"/page/addrSort.html"})
   public String sort(Integer addr_id) {
     String datetime = this.sdf.format(new Date());
     this.map.put("addr_id", addr_id);
     this.map.put("sort", datetime);
     return String.valueOf(this.addressService.sort(this.map));
   }
 
   @RequestMapping({"/page/addrList.html"})
   public ModelAndView list(Integer addr_id, Integer cps_id, String oppen_id, HttpSession session)
   {
     this.address.setOppen_id(getOppen_id(session));
     List list = this.addressService.list(this.address);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("cps_id", cps_id);
     ml.addObject("addr_id", addr_id);
     ml.setViewName("page/address-list");
     return ml;
   }
 
   @RequestMapping({"/page/addrListTwo.html"})
   public ModelAndView listTwo(Integer goods_id, Integer goods_num, Integer addr_id, Integer cps_id, String oppen_id, HttpSession session) {
     this.address.setOppen_id(getOppen_id(session));
     List list = this.addressService.list(this.address);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("cps_id", cps_id);
     ml.addObject("addr_id", addr_id);
     ml.addObject("goods_id", goods_id);
     ml.addObject("goods_num", goods_num);
     ml.setViewName("page/address-list-two");
     return ml;
   }
 
   @RequestMapping({"/page/addressList.html"})
   public ModelAndView addrList(String oppen_id, HttpSession session)
   {
     this.address.setOppen_id(getOppen_id(session));
     List list = this.addressService.list(this.address);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("page/addr-list");
     return ml;
   }
 
   @RequestMapping({"/page/addrListById.html"})
   public ModelAndView listById(Integer addr_id) {
     this.address.setAddr_id(addr_id);
     List list = this.addressService.listById(this.address);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.addObject("addr_id", addr_id);
     ml.setViewName("page/addr-info");
     return ml;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.controller.AddressCtrl
 * JD-Core Version:    0.6.2
 */