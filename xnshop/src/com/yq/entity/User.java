 package com.yq.entity;
 
 public class User extends Page
 {
   int user_id;
   String oppen_id;
   String username;
   String realname;
   String password;
   String head_img;
   Integer area_id;
   String area_name;
   String add_time;
   String member_time;
   int status;
 
   public int getUser_id()
   {
     return this.user_id;
   }
   public void setUser_id(int user_id) {
     this.user_id = user_id;
   }
   public String getOppen_id() {
     return this.oppen_id;
   }
   public void setOppen_id(String oppen_id) {
     this.oppen_id = oppen_id;
   }
   public String getUsername() {
     return this.username;
   }
   public void setUsername(String username) {
     this.username = username;
   }
   public String getRealname() {
     return this.realname;
   }
   public void setRealname(String realname) {
     this.realname = realname;
   }
   public String getPassword() {
     return this.password;
   }
   public void setPassword(String password) {
     this.password = password;
   }
   public String getHead_img() {
     return this.head_img;
   }
   public void setHead_img(String head_img) {
     this.head_img = head_img;
   }
   public Integer getArea_id() {
     return this.area_id;
   }
   public void setArea_id(Integer area_id) {
     this.area_id = area_id;
   }
   public String getArea_name() {
     return this.area_name;
   }
   public void setArea_name(String area_name) {
     this.area_name = area_name;
   }
   public String getAdd_time() {
     return this.add_time;
   }
   public void setAdd_time(String add_time) {
     this.add_time = add_time;
   }
   public int getStatus() {
     return this.status;
   }
   public void setStatus(int status) {
     this.status = status;
   }
   public String getMember_time() {
     return this.member_time;
   }
   public void setMember_time(String member_time) {
     this.member_time = member_time;
   }
 }

/* Location:           
 * Qualified Name:     com.yq.entity.User
 * JD-Core Version:    0.6.2
 */