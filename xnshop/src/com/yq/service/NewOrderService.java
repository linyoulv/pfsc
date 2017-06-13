package com.yq.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.yq.dao.NewOrderDao;
import com.yq.entity.NewOrder;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 

public class NewOrderService {
	
	
	 @Autowired
	   private NewOrderDao  neworderDao;
	 
	   public int insert(NewOrder neworder)
	   {
	     return this.neworderDao.insert(neworder);
	   }
	 

}
