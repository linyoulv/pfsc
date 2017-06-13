 package com.yq.service;
 
 import com.yq.dao.AddressDao;
 import com.yq.entity.Address;
 import java.util.List;
 import java.util.Map;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 
 @Service
 public class AddressService
 {
 
   @Autowired
   private AddressDao addressDao;
 
   public int insert(Map<String, Object> map)
   {
     return this.addressDao.insert(map);
   }
 
   public int update(Map<String, Object> map) {
     return this.addressDao.update(map);
   }
 
   public int delete(Map<String, Object> map) {
     return this.addressDao.delete(map);
   }
 
   public int sort(Map<String, Object> map) {
     return this.addressDao.sort(map);
   }
 
   public List<Address> list(Address address) {
     return this.addressDao.list(address);
   }
 
   public List<Address> listById(Address address) {
     return this.addressDao.listById(address);
   }
 
   public int count(Address address) {
     return this.addressDao.count(address);
   }
 }

/* Location:           
 * Qualified Name:     com.yq.service.AddressService
 * JD-Core Version:    0.6.2
 */