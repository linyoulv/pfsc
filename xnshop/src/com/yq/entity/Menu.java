 package com.yq.entity;
 
 public class Menu extends Page
 {
   Integer goods_id;
   String goods_name;
   String goods_img;
   float goods_price;
   String goods_detail;
   String add_time;
   Integer status;
   String goods_spe;
 
   public Integer getGoods_id()
   {
     return this.goods_id;
   }
 
   public void setGoods_id(Integer goods_id) {
     this.goods_id = goods_id;
   }
 
   public String getGoods_name() {
     return this.goods_name;
   }
 
   public void setGoods_name(String goods_name) {
     this.goods_name = goods_name;
   }
 
   public String getGoods_img() {
     return this.goods_img;
   }
 
   public void setGoods_img(String goods_img) {
     this.goods_img = goods_img;
   }
 
   public float getGoods_price()
   {
     return this.goods_price;
   }
 
   public void setGoods_price(float goods_price) {
     this.goods_price = goods_price;
   }
 
   public String getGoods_detail() {
     return this.goods_detail;
   }
 
   public void setGoods_detail(String goods_detail) {
     this.goods_detail = goods_detail;
   }
 
   public Integer getStatus() {
     return this.status;
   }
 
   public void setStatus(Integer status) {
     this.status = status;
   }
 
   public String getAdd_time() {
     return this.add_time;
   }
 
   public void setAdd_time(String add_time) {
     this.add_time = add_time;
   }
 
   public String getGoods_spe() {
     return this.goods_spe;
   }
 
   public void setGoods_spe(String goods_spe) {
     this.goods_spe = goods_spe;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.Menu
 * JD-Core Version:    0.6.2
 */