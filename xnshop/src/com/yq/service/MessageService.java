package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.MenuDao;
import com.yq.dao.MessageDao;
import com.yq.entity.Cart;
import com.yq.entity.Goods;
import com.yq.entity.Menu;
import com.yq.entity.Message;


@Service
public class MessageService {
	
	
	  @Autowired
	   private MessageDao messageDao;
	 
	   public int insert(Map<String, Object> map)
	   {
	     return this.messageDao.insert(map);
	   }
	 
	   public int update(Map<String, Object> map) {
	     return this.messageDao.update(map);
	   }
	   
 
	    public List<Message>  listById(Message message) {
		     return this.messageDao.listById(message);
		   }

	 
	

}
