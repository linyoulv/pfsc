package com.yq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

 




import com.yq.entity.Errands;
import com.yq.service.ErrandsService;
import com.yq.util.StringUtil;
 
@Controller
@RequestMapping({"/"})
public class ErrandsCtr extends StringUtil{
	 private Errands errands = new Errands();
	@Autowired
     private ErrandsService srrandsService;
	
	 Map<String, Object> map = new HashMap();
	 
	   /*
	   @RequestMapping({"/main/fgtAddjsp.html"})
	   public ModelAndView addjsp()
	   {
	     return new ModelAndView("main/freight/add");
	   }
	 */
	   @ResponseBody
	   @RequestMapping({"/main/errandsUpdate.html"})
	   public String update(Float errands_price,Integer id) {
		  
	     this.map.put("errands_price", errands_price);
	     this.map.put("id", id);
	     return String.valueOf(this.srrandsService.update(this.map));
	   }
	
	   @RequestMapping({"/main/errands.html"})
	   public ModelAndView list()
	   {
	     List list = this.srrandsService.list1(this.errands);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("list", list);
	     ml.setViewName("main/errands/list");
	     return ml;
	   }
	   @RequestMapping({"/main/errandsById.html"})
	   public ModelAndView listById(Integer id) {
	 
		 this.errands.setId(id);
	     List list = this.srrandsService.listById(this.errands);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("list", list);
	     ml.setViewName("main/errands/info");
	     return ml;
	   }

	   
	   @ResponseBody
	   @RequestMapping({"/main/errandsInsert.html"})
	   public String insert(Float errands_price) {
	     this.map.put("errands_price", errands_price);
	   
	     return String.valueOf(this.srrandsService.insert(this.map));
	   }
	   
	   @RequestMapping({"/main/errandsAddjsp.html"})
	   public ModelAndView addjsp()
	   {
	     return new ModelAndView("main/errands/add");
	   }
}
