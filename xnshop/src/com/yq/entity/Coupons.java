 package com.yq.entity;
 
 public class Coupons extends Page
 {
   Integer cps_id;
   String cps_name;
   String cps_code;
   Float cps_price;
   String cps_time;
   Integer cps_level;
   String oppen_id;
   int status;
 
   public Integer getCps_id()
   {
     return this.cps_id;
   }
 
   public void setCps_id(Integer cps_id) {
     this.cps_id = cps_id;
   }
 
   public String getCps_name() {
     return this.cps_name;
   }
 
   public void setCps_name(String cps_name) {
     this.cps_name = cps_name;
   }
 
   public String getCps_code() {
     return this.cps_code;
   }
 
   public void setCps_code(String cps_code) {
     this.cps_code = cps_code;
   }
 
   public Float getCps_price() {
     return this.cps_price;
   }
 
   public void setCps_price(Float cps_price) {
     this.cps_price = cps_price;
   }
 
   public String getCps_time() {
     return this.cps_time;
   }
 
   public void setCps_time(String cps_time) {
     this.cps_time = cps_time;
   }
 
   public Integer getCps_level() {
     return this.cps_level;
   }
 
   public void setCps_level(Integer cps_level) {
     this.cps_level = cps_level;
   }
 
   public String getOppen_id() {
     return this.oppen_id;
   }
 
   public void setOppen_id(String oppen_id) {
     this.oppen_id = oppen_id;
   }
 
   public int getStatus() {
     return this.status;
   }
 
   public void setStatus(int status) {
     this.status = status;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.Coupons
 * JD-Core Version:    0.6.2
 */