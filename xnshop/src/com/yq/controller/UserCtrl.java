 package com.yq.controller;
 
 import com.yq.entity.Cart;
 import com.yq.entity.User;
 import com.yq.service.CartService;
 import com.yq.service.UserService;
 import com.yq.util.PageUtil;
 import com.yq.util.StringUtil;
 import com.yq.util.WxUtil;
 import java.io.PrintStream;
 import java.io.UnsupportedEncodingException;
 import java.text.SimpleDateFormat;
 import java.util.Date;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpSession;
 import org.apache.commons.lang.StringUtils;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
 import org.springframework.web.bind.annotation.RequestParam;
 import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
 @Controller
 @RequestMapping
 public class UserCtrl extends StringUtil
 {
 
   @Autowired
   private UserService userService;
   private User user = new User();
 
   @Autowired
   private CartService cartService;
   private Cart cart = new Cart();
 
   Map<String, Object> map = new HashMap();
   SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
 
   @RequestMapping({"/userAddjsp.html"})
   public ModelAndView addjsp() { ModelAndView ml = new ModelAndView();
     ml.setViewName("main/user/add");
     return ml; }
 
   @RequestMapping({"/page/userInsert.html"})
   public ModelAndView insert(String url, HttpServletRequest request, HttpSession session)
   {
     String oppen_id = "";
     String username = "";
     String add_time = this.sf.format(new Date());
     int isUrl = 0;
     if (session.getAttribute("oppen_id") == null) {
       System.out.println("系统开始，检查oppen_id=" + 
         session.getAttribute("oppen_id"));
       this.map = WxUtil.oppenIdInfo(request, session);
       oppen_id = (String)session.getAttribute("oppen_id");
 
       if ((oppen_id != null) && (!"".equals(oppen_id))) {
         this.map.put("oppen_id", oppen_id);
         this.map.put("username", username);
         this.map.put("realname", session.getAttribute("realname"));
         this.map.put("head_img", session.getAttribute("head_img"));
         this.map.put("add_time", add_time);
         this.map.put("status", Integer.valueOf(1));
         this.user.setOppen_id(oppen_id);
 
         if (this.userService.listById(this.user).size() != 0) {
           System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
           System.out.println("用户存在，则update");
           isUrl = this.userService.update(this.map);
         } else {
           System.out.println("用户不存在，则insert");
           isUrl = this.userService.insert(this.map);
         }
         this.cart.setOppen_id(oppen_id);
         int cart_num = this.cartService.goodstotalnum(this.cart);
         session.setAttribute("cart_num", Integer.valueOf(cart_num));
       }
       else {
         System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
         System.out.println("oppen_id==null");
         isUrl = -1;
       }
     } else {
       isUrl = 1;
     }
 
     url = "redirect:" + url;
     String reUrl = isUrl == 1 ? url : "page/error";
     return new ModelAndView(reUrl);
   }
   @ResponseBody
   @RequestMapping({"/page/userUpdate.html"})
   public String update(String realname, String head_img, String oppen_id) {
     this.map.put("realname", realname);
     this.map.put("head_img", head_img);
     this.map.put("oppen_id", oppen_id);
     return String.valueOf(this.userService.update(this.map));
   }
 
   @ResponseBody
   @RequestMapping({"/main/userUpstatus.html"})
   public String upstatus(String oppen_id, Integer status) {
     this.map.put("status", status);
     this.map.put("oppen_id", oppen_id);
     return String.valueOf(this.userService.upstatus(this.map));
   }
   @ResponseBody
   @RequestMapping({"/page/userUparea.html"})
   public String uparea(Integer area_id, String area_name, String oppen_id) {
     this.map.put("area_id", area_id);
     this.map.put("area_name", area_name);
     this.map.put("oppen_id", oppen_id);
     return String.valueOf(this.userService.uparea(this.map));
   }
   @ResponseBody
   @RequestMapping({"/main/userUpmbertime.html"})
   public String upmbertime(String oppen_id, String member_time) {
     this.map.put("member_time", member_time);
     this.map.put("oppen_id", oppen_id);
     return String.valueOf(this.userService.upmbertime(this.map));
   }
 
   @RequestMapping({"/main/userList.html"})
   public ModelAndView list(String realname, @RequestParam(defaultValue="1") Integer status, @RequestParam(defaultValue="1") Integer currentPage, HttpServletRequest request)
   {
     this.user.setStatus(status.intValue());
     try {
       if (StringUtils.isNotEmpty(realname))
       {
         realname = new String(realname.getBytes("iso8859-1"), "utf-8");
       }
       this.user.setRealname(realname);
       int total = this.userService.count(this.user);
       PageUtil.pager(currentPage.intValue(), this.pagesize_1.intValue(), total, request);
       this.user.setPageSize(this.pagesize_1.intValue());
       this.user.setCurrentNum(PageUtil.currentNum(currentPage.intValue(), this.pagesize_1.intValue()));
       List list = this.userService.list(this.user);
       ModelAndView ml = new ModelAndView();
       ml.addObject("list", list);
       ml.addObject("realname", realname);
       ml.setViewName("main/user/list");
       return ml;
     }
     catch (UnsupportedEncodingException e)
     {
       e.printStackTrace();
     }return null;
   }
 
   @RequestMapping({"/main/userListById.html"})
   public ModelAndView listById(String oppen_id)
   {
     this.user.setOppen_id(oppen_id);
     List list = this.userService.listById(this.user);
     ModelAndView ml = new ModelAndView();
     ml.addObject("list", list);
     ml.setViewName("main/user/info");
     return ml;
   }
 
   @RequestMapping({"/page/center.html"})
   public ModelAndView userListById(String oppen_id, HttpSession session)
   {
     oppen_id = getOppen_id(session);
     this.user.setOppen_id(oppen_id);
     List list = this.userService.listById(this.user);
     ModelAndView ml = new ModelAndView();
     ml.addObject("user", list);
     ml.setViewName("page/center");
     return ml;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.controller.UserCtrl
 * JD-Core Version:    0.6.2
 */