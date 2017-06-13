 package com.yq.service;
 
 import com.yq.dao.OrderDao;
 import com.yq.entity.Order;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class OrderService
 {
 
   @Autowired
   private OrderDao orderDao;
 
   public int insert(Order order)
   {
     return this.orderDao.insert(order);
   }
 
   public int upstatus(Map<String, Object> map) {
     return this.orderDao.upstatus(map);
   }
 
   public int delete(Map<String, Object> map) {
     return this.orderDao.delete(map);
   }
 
   public List<Order> list(Order order) {
     return this.orderDao.list(order);
   }
   public List<Order> list1(Order order) {
	     return this.orderDao.list1(order);
	   }
   public List<Order> listById(Order order) {
     return this.orderDao.listById(order);
   }
 
   public int count(Order order) {
     return this.orderDao.count(order);
   }
   public List<Order> listJson(Order order) {
     return this.orderDao.listJson(order);
   }
 
   public int listJsonCount(Order order)
   {
     return this.orderDao.listJsonCount(order);
   }
   public int paotuiinsert(Order order)
   {
     return this.orderDao.paotuiinsert(order);
   }
   
   public List<Order> paotuilist(Order order) {
	     return this.orderDao.paotuilist(order);
	   }
   public int jiesonginsert(Order order)
   {
     return this.orderDao.jiesonginsert(order);
   }
   
   public List<Order> jiesonglist(Order order) {
	     return this.orderDao.jiesonglist(order);
	   }
   public int daibaninsert(Order order)
   {
     return this.orderDao.daibaninsert(order);
   }
   
   public List<Order> daibanlist(Order order) {
	     return this.orderDao.daibanlist(order);
	   }
 }
