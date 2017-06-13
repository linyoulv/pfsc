 package com.yq.entity;
 
 public class Category
 {
   Integer ctg_id;
   String ctg_name;
   String ctg_img;
   Integer status;
   Integer sort;
 
   public Integer getCtg_id()
   {
     return this.ctg_id;
   }
   public void setCtg_id(Integer ctg_id) {
     this.ctg_id = ctg_id;
   }
   public String getCtg_name() {
     return this.ctg_name;
   }
   public void setCtg_name(String ctg_name) {
     this.ctg_name = ctg_name;
   }
   public String getCtg_img() {
     return this.ctg_img;
   }
   public void setCtg_img(String ctg_img) {
     this.ctg_img = ctg_img;
   }
   public Integer getStatus() {
     return this.status;
   }
   public void setStatus(Integer status) {
     this.status = status;
   }
   public Integer getSort() {
     return this.sort;
   }
   public void setSort(Integer sort) {
     this.sort = sort;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.Category
 * JD-Core Version:    0.6.2
 */