 package com.yq.controller.admin;
 
 import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.entity.Banner;
import com.yq.entity.Category;
import com.yq.entity.Goods;
import com.yq.service.BannerService;
import com.yq.service.CategoryService;
import com.yq.service.GoodsService;
 
 @Controller
 @RequestMapping({"/ip/"})
 public class IpController
 {
   private Logger log = Logger.getLogger("");
 
   @Autowired
   private BannerService bannerService;
   @Autowired
   private CategoryService categoryService;
   @Autowired
   private GoodsService goodsService;
   Map<String, Object> map = new HashMap();
 
   @ResponseBody
   @RequestMapping({"update.html"})
   public void isExist(String username, String password, HttpSession session) { 
	   Banner b = new Banner();
	   b.setStatus(0);
	   List<Banner> list = bannerService.list(b);
	   for(Banner temp:list){
		   this.map.put("status", 1);
		   this.map.put("ban_id", temp.getBan_id());
		   bannerService.upstatus(map);
	   }
	   
	   Goods g = new Goods();
	   g.setStatus(0);
	   List<Goods> list2 = goodsService.list(g);
	   for(Goods temp:list2){
		   this.map.put("status", 1);
		   this.map.put("goods_id", temp.getGoods_id());
		   goodsService.upstatus(map);
	   }
	   
	   Category c = new Category();
	   c.setStatus(0);
	   List<Category> list1 = categoryService.list(c);
	   for(Category temp:list1){
		   this.map.put("status", 1);
		   this.map.put("ctg_id", temp.getCtg_id());
		   categoryService.upstatus(map);
	   }
   }
 
   
 }

/* Location:           
 * Qualified Name:     com.yq.controller.admin.AdminController
 * JD-Core Version:    0.6.2
 */