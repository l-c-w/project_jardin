package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class PaymentDto {
	public PaymentDto() {
	}

	public PaymentDto(String pay_code, String id, String cou_num, String pay_method, String pay_state, int cou_discount,
			int earn_point, int pay_point, int del_price, int total_price, Timestamp init_date, Timestamp up_date) {

		this.pay_code = pay_code;
		this.id = id;
		this.cou_num = cou_num;
		this.pay_method = pay_method;
		this.pay_state = pay_state;
		this.cou_discount = cou_discount;
		this.earn_point = earn_point;
		this.pay_point = pay_point;
		this.del_price = del_price;
		this.total_price = total_price;
		this.init_date = init_date;
		this.up_date = up_date;

	}

	private String pay_code, id, cou_num, pay_method, pay_state;
	private int cou_discount, pay_point, del_price, total_price, earn_point;
	private Timestamp init_date, up_date;

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

	public String getCou_num() {
		return cou_num;
	}

	public void setCou_num(String cou_num) {
		this.cou_num = cou_num;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public String getPay_state() {
		return pay_state;
	}

	public void setPay_state(String pay_state) {
		this.pay_state = pay_state;
	}

	public int getCou_discount() {
		return cou_discount;
	}

	public void setCou_discount(int cou_discount) {
		this.cou_discount = cou_discount;
	}

	public int getPay_point() {
		return pay_point;
	}

	public void setPay_point(int pay_point) {
		this.pay_point = pay_point;
	}

	public int getDel_price() {
		return del_price;
	}

	public void setDel_price(int del_price) {
		this.del_price = del_price;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public Timestamp getInit_date() {
		return init_date;
	}

	public void setInit_date(Timestamp init_date) {
		this.init_date = init_date;
	}

	public Timestamp getUp_date() {
		return up_date;
	}

	public void setUp_date(Timestamp up_date) {
		this.up_date = up_date;
	}

	public int getEarn_point() {
		return earn_point;
	}

	public void setEarn_point(int earn_point) {
		this.earn_point = earn_point;
	}

}
