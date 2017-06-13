package com.yq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.GuaranteeDao;
import com.yq.entity.Guarantee;

@Service 
public class GuaranteeService {
	
	   @Autowired
	   GuaranteeDao guaranteeDao;
	 
	   public int insert(Map<String, Object> map)
	   {
	     return this.guaranteeDao.insert(map);
	   }
	 
	   public int update(Map<String, Object> map) {
	     return this.guaranteeDao.update(map);
	   }
	 
	   public List<Guarantee> list(Guarantee guarantee) {
	     return this.guaranteeDao.list(guarantee);
	   }

}
