 package com.yq.util;
 
 import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
 
 public class StringUtil
 {
   protected Integer pagesize_1 = Integer.valueOf(10);
 
   public String getOppen_id(HttpSession session)
   {
     String oppen_id = (String)session.getAttribute("oppen_id");
     if(StringUtils.isEmpty(oppen_id)){
         oppen_id = session.toString();
     }
     return oppen_id;
   }
 
   public void setOppen_id(String oppen_id, HttpSession session)
   {
     session.setAttribute("oppen_id", oppen_id);
   }
 
   public Integer getPagesize_1() {
     return this.pagesize_1;
   }
 
   public void setPagesize_1(Integer pagesize_1) {
     this.pagesize_1 = pagesize_1;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.util.StringUtil
 * JD-Core Version:    0.6.2
 */