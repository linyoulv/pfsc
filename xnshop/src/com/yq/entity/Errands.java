package com.yq.entity;

public class Errands {
	
	   Integer  id;
	   public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Float getErrands_price() {
		return errands_price;
	}
	public void setErrands_price(Float errands_price) {
		this.errands_price = errands_price;
	}
	Float errands_price;
	
	String errands_name;
	public String getErrands_name() {
		return errands_name;
	}
	public void setErrands_name(String errands_name) {
		this.errands_name = errands_name;
	}
	

}
