 package com.yq.util;
 
 import java.io.PrintStream;
 import javax.servlet.http.HttpServletRequest;
 
 public class PageUtil
 {
   public static void pager(int currentPage, int pageSize, int total, HttpServletRequest request)
   {
     if ((currentPage == 0) || (currentPage < 0)) {
       currentPage = 1;
     }
     if (pageSize == 0) {
       pageSize = 10;
     }
     int totalPage = 0;
     if (total % pageSize == 0)
       totalPage = total / pageSize;
     else {
       totalPage = total / pageSize + 1;
     }
 
     request.setAttribute("total", Integer.valueOf(total));
     request.setAttribute("totalPage", Integer.valueOf(totalPage));
     request.setAttribute("currentPage", Integer.valueOf(currentPage));
   }
   public static void test() {
     System.out.println("*********************************");
   }
   public static int currentNum(int currentPage, int pageSize) {
     if ((currentPage == 0) || (currentPage < 0)) {
       currentPage = 1;
     }
     return (currentPage - 1) * pageSize;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.util.PageUtil
 * JD-Core Version:    0.6.2
 */