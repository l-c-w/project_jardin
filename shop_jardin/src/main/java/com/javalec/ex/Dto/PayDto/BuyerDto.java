package com.javalec.ex.Dto.PayDto;

public class BuyerDto {

	public BuyerDto() {

	}

	public BuyerDto(String pay_code, String id, String name, String del_post, String del_address1, String del_address2,
			String del_demand, int del_phone1, int del_phone2, int del_phone3) {
		this.pay_code = pay_code;
		this.id = id;
		this.name = name;
		this.del_post = del_post;
		this.del_address1 = del_address1;
		this.del_address2 = del_address2;
		this.del_demand = del_demand;
		this.del_phone1 = del_phone1;
		this.del_phone2 = del_phone2;
		this.del_phone3 = del_phone3;

	}

	private String pay_code, id, name, email1, email2, del_post, del_address1, del_address2, del_demand;
	private int del_phone1, del_phone2, del_phone3;

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getDel_post() {
		return del_post;
	}

	public void setDel_post(String del_post) {
		this.del_post = del_post;
	}

	public String getDel_address1() {
		return del_address1;
	}

	public void setDel_address1(String del_address1) {
		this.del_address1 = del_address1;
	}

	public String getDel_address2() {
		return del_address2;
	}

	public void setDel_address2(String del_address2) {
		this.del_address2 = del_address2;
	}

	public String getDel_demand() {
		return del_demand;
	}

	public void setDel_demand(String del_demand) {
		this.del_demand = del_demand;
	}

	public int getDel_phone1() {
		return del_phone1;
	}

	public void setDel_phone1(int del_phone1) {
		this.del_phone1 = del_phone1;
	}

	public int getDel_phone2() {
		return del_phone2;
	}

	public void setDel_phone2(int del_phone2) {
		this.del_phone2 = del_phone2;
	}

	public int getDel_phone3() {
		return del_phone3;
	}

	public void setDel_phone3(int del_phone3) {
		this.del_phone3 = del_phone3;
	}

}
