package com.yq.entity;

public class NewOrder {
	
	private int id;
	private int product_id;
	private String product_name;
	private String product_spe;
	private String product_price;
	private int product_num;
	private int product_start_num;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_spe() {
		return product_spe;
	}
	public void setProduct_spe(String product_spe) {
		this.product_spe = product_spe;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public int getProduct_start_num() {
		return product_start_num;
	}
	public void setProduct_start_num(int product_start_num) {
		this.product_start_num = product_start_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Insert [id=" + id + ", product_id=" + product_id
				+ ", product_name=" + product_name + ", product_spe="
				+ product_spe + ", product_price=" + product_price
				+ ", product_num=" + product_num + ", product_start_num="
				+ product_start_num + ", address=" + address + "]";
	}
	public NewOrder(int id, int product_id, String product_name,
			String product_spe, String product_price, int product_num,
			int product_start_num, String address) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_spe = product_spe;
		this.product_price = product_price;
		this.product_num = product_num;
		this.product_start_num = product_start_num;
		this.address = address;
	}
	public NewOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
