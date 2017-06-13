 package com.yq.service;
 
 import com.yq.dao.CartDao;
 import com.yq.entity.Cart;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class CartService
 {
 
   @Autowired
   private CartDao cartDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.cartDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.cartDao.update(map);
   }
 
   public int delete(Map<String, Object> map) {
     return this.cartDao.delete(map);
   }
 
   public List<Cart> list(Cart cart) {
     return this.cartDao.list(cart);
   }
   public int count(Cart cart) {
     return this.cartDao.count(cart);
   }
   public int goodsnum(Cart cart) {
     return this.cartDao.goodsnum(cart);
   }
 
   public Float goodstotalprice(Cart cart) {
     return this.cartDao.goodstotalprice(cart);
   }
   public int goodstotalnum(Cart cart) {
     return this.cartDao.goodstotalnum(cart);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.CartService
 * JD-Core Version:    0.6.2
 */