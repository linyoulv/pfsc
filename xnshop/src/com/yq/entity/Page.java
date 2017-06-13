 package com.yq.entity;
 
 public class Page
 {
   private int currentPage;
   private int totalPage;
   private int total;
   private int pageSize;
   private int currentNum;
 
   public int getCurrentPage()
   {
     return this.currentPage;
   }
 
   public void setCurrentPage(int currentPage) {
     this.currentPage = currentPage;
   }
 
   public int getTotalPage() {
     return this.totalPage;
   }
 
   public void setTotalPage(int totalPage) {
     this.totalPage = totalPage;
   }
 
   public int getTotal() {
     return this.total;
   }
 
   public void setTotal(int total) {
     this.total = total;
   }
 
   public int getPageSize() {
     return this.pageSize;
   }
 
   public void setPageSize(int pageSize) {
     this.pageSize = pageSize;
   }
 
   public int getCurrentNum() {
     return this.currentNum;
   }
 
   public void setCurrentNum(int currentNum) {
     this.currentNum = currentNum;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.Page
 * JD-Core Version:    0.6.2
 */