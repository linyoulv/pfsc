 package com.yq.entity;
 
 import java.util.List;
 
 public class GoodsOther
 {
   String addr_name;
   String note;
   String add_time;
   List<GoodsJson> goodsList;
   Integer total;
 
   public String getAddr_name()
   {
     return this.addr_name;
   }
 
   public void setAddr_name(String addr_name) {
     this.addr_name = addr_name;
   }
 
   public String getNote() {
     return this.note;
   }
 
   public void setNote(String note) {
     this.note = note;
   }
 
   public String getAdd_time() {
     return this.add_time;
   }
 
   public void setAdd_time(String add_time) {
     this.add_time = add_time;
   }
 
   public List<GoodsJson> getGoodsList() {
     return this.goodsList;
   }
 
   public void setGoodsList(List<GoodsJson> goodsList) {
     this.goodsList = goodsList;
   }
 
   public Integer getTotal() {
     return this.total;
   }
 
   public void setTotal(Integer total) {
     this.total = total;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.GoodsOther
 * JD-Core Version:    0.6.2
 */