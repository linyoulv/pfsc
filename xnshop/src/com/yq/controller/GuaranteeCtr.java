package com.yq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;







import com.yq.entity.Guarantee;
import com.yq.service.GuaranteeService;
import com.yq.util.StringUtil;

@Controller
@RequestMapping({"/"})
public class GuaranteeCtr  {
	 private Guarantee guarantee;
	 @Autowired
	   private GuaranteeService guaranteeService;
	  
	   Map<String, Object> map = new HashMap();
	
 
	   @RequestMapping({"/main/guarantee.html"})
	   public ModelAndView list()
	   {
	     List list = this.guaranteeService.list(this.guarantee);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("list", list);
	     ml.setViewName("main/guarantee/list");
	     return ml;
	   }
	   @RequestMapping({"/main/guaranteeAddjsp.html"})
	   public ModelAndView addjsp()
	   {
	     return new ModelAndView("main/guarantee/add");
	   }
	//   guaranteeUpdate
	   @ResponseBody
	   @RequestMapping({"/main/guaranteeUpdate.html"})
	   public String update(Float guarant_price, Integer id) { 
		 this.map.put("guarant_price", guarant_price);
	     this.map.put("id", id);
	     return String.valueOf(this.guaranteeService.update(this.map));
	   }
	 
	   @ResponseBody
	   @RequestMapping({"/main/guaranteeInsert.html"})
	   public String insert(Float guarant_price) {
	     this.map.put("guarant_price", guarant_price);
	  
	     return String.valueOf(this.guaranteeService.insert(this.map));
	   }
	   @RequestMapping({"/main/guaranteeListById.html"})
	   public ModelAndView listById() {
	     List list = this.guaranteeService.list(this.guarantee);
	     ModelAndView ml = new ModelAndView();
	     ml.addObject("list", list);
	     ml.setViewName("main/guarantee/info");
	     return ml;
	   }
 
}
