package com.yq.entity;

public class Merchant extends Page{
 
	public String getM_username() {
		return m_username;
	}
	public void setM_username(String m_username) {
		this.m_username = m_username;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_repassword() {
		return m_repassword;
	}
	public void setM_repassword(String m_repassword) {
		this.m_repassword = m_repassword;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	Integer id;
	   public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	   String m_username;
	   String m_password;
	   String m_repassword;
	   String m_address;
	   String m_phone;
	   Integer  m_shbz;
	   
	public Integer getM_shbz() {
		return m_shbz;
	}
	public void setM_shbz(Integer m_shbz) {
		this.m_shbz = m_shbz;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	 

}
