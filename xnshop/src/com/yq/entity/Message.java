package com.yq.entity;

public class Message {
	
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public Integer getGoodId() {
		return goodId;
	}
	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	Integer  Id;
	Integer goodId;
	String  content;
	String  addtime;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	String   username;
	public String getAdd_time() {
		return addtime;
	}
	public void setAdd_time(String addtime) {
		this.addtime = addtime;
	}
	
	
	 
   
}
