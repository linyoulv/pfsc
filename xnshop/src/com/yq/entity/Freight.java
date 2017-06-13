 package com.yq.entity;
 
 public class Freight
 {
   Integer fgt_id;
   Float fgt_price;
   Float free_price;
 
   public Integer getFgt_id()
   {
     return this.fgt_id;
   }
   public void setFgt_id(Integer fgt_id) {
     this.fgt_id = fgt_id;
   }
   public Float getFgt_price() {
     return this.fgt_price;
   }
   public void setFgt_price(Float fgt_price) {
     this.fgt_price = fgt_price;
   }
   public Float getFree_price() {
     return this.free_price;
   }
   public void setFree_price(Float free_price) {
     this.free_price = free_price;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.Freight
 * JD-Core Version:    0.6.2
 */